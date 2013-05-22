module RailsI18n
  module Pluralization
    module One
      def self.rule
        Proc.new { :one }
      end

      def self.with_locale(locale)
        { locale => {
            :'i18n' => {
              :plural => {
                :keys => [:one],
                :rule => rule }}}}
      end
    end
  end
end
