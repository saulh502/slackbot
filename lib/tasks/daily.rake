# frozen_string_literal: true

task :daily_by_channel_name, [:channel_name] => :environment do |_t, args|
  DailyService.call channel_name: args.channel_name if Time.now.strftime('%u').to_i <= 5
end
