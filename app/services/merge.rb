# frozen_string_literal: true

# Merge duplicate entities
#
# == Parameters:
# options::
#  You can either pass named arguments `discard` and `to.
#    `discard` should be the `id` of the duplicate `:Entity`
#    `to` should be the `id` of the canonical `:Entity`
#
#  Or you can pass a list of `:Struct` objects to "to" and "discard" attributes.
#  The `discard` attribute should be the duplicate `:Entity`.
#  The `to` attribute should be the canonical `:Entity`.
#
#  Example of `:Array` of `:Struct`s:
#
#  ~~~
#  Merger = Struct.new(:discard, :keep)
#  merger = Merger.new(discard: Entity, to: Entity)
#  mergers = [merger]
#  ~~~
#
#  When initilized with an `:Array` of `:Struc`s, the mergers will
#  be executed upon initilization.
#

class Merge
  def initialize(options)
    @options = options
    if options.instance_of?(Array)
      @mergers = options
      bulk_merge
    else
      @discard = Entity.public_send(options[:type]).find_by(legacy_pk: options[:discard])
      @keep = Entity.public_send(options[:type]).find_by(legacy_pk: options[:keep])
    end
  end

  def bulk_merge
    @mergers.each do |merge|
      @discard = if uuid?(merge[:discard])
                   Entity.find(merge[:discard])
                 else
                   Entity.public_send(merge[:type]).find_by(legacy_pk: merge[:discard])
                 end

      @keep = if uuid?(merge[:keep])
                Entity.find(merge[:keep])
              else
                Entity.public_send(merge[:type]).find_by(legacy_pk: merge[:keep])
              end

      next if @keep.nil?

      next if @discard.nil?

      merge_entity
    end
  end

  def merge_entity
    merge_mentions if @discard.letters.present?
    merge_sent_to if @discard.letters_sent_to.present?
    merge_sent if @discard.letters_sent.present?
    merge_sent_from if @discard.letters_sent_from.present?
    merge_received if @discard.letters_received.present?
    @discard.destroy
  end

  private

  def merge_mentions
    @keep.letters << @discard.letters
    @discard.letters.each do |letter|
      doc = Nokogiri::XML(letter.content)
      doc = Nokogiri::HTML(letter.content) if doc.content.empty?

      next if doc.content.empty?

      doc.xpath("//#{@discard.e_type}").each do |tag|
        tag['profile_id'] = @keep.id.to_s if tag['profile_id'] == @discard.id.to_s
      end

      letter.update(content: doc.to_xml)
    end
  end

  def merge_sent_to
    @keep.letters_sent_to << @discard.letters_sent_to
  end

  def merge_sent
    @keep.letters_sent << @discard.letters_sent
  end

  def merge_sent_from
    @keep.letters_sent_from << @discard.letters_sent_from
  end

  def merge_received
    @keep.letters_received << @discard.letters_received
  end

  def uuid?(value)
    return false if value.is_a?(Integer)

    value =~ /\A[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}\z/
  end
end
