require 'rails_helper'

describe 'trip index' do
  it 'displays the first 30 trips' do
    trip_1 = Trip.create(duration: 2, start_date:"09/01/2018", end_date:"09/01/2018", bike_id: 2, subscription_type:"Subsciber", zip_code: 94127 )
    trip_2 = Trip.create(duration: 2, start_date:"09/01/2018", end_date:"09/01/2018", bike_id: 2, subscription_type:"Subsciber", zip_code: 94127 )
    trip_3 = Trip.create(duration: 2, start_date:"09/01/2018", end_date:"09/01/2018", bike_id: 2, subscription_type:"Subsciber", zip_code: 94127 )
    trip_4 = Trip.create(duration: 2, start_date:"09/01/2018", end_date:"09/01/2018", bike_id: 2, subscription_type:"Subsciber", zip_code: 94127 )
    trip_5 = Trip.create(duration: 2, start_date:"09/01/2018", end_date:"09/01/2018", bike_id: 2, subscription_type:"Subsciber", zip_code: 94127 )
    trip_6 = Trip.create(duration: 2, start_date:"09/01/2018", end_date:"09/01/2018", bike_id: 2, subscription_type:"Subsciber", zip_code: 94127 )
    trip_7 = Trip.create(duration: 2, start_date:"09/01/2018", end_date:"09/01/2018", bike_id: 2, subscription_type:"Subsciber", zip_code: 94127 )
    trip_8 = Trip.create(duration: 2, start_date:"09/01/2018", end_date:"09/01/2018", bike_id: 2, subscription_type:"Subsciber", zip_code: 94127 )
    trip_9 = Trip.create(duration: 2, start_date:"09/01/2018", end_date:"09/01/2018", bike_id: 2, subscription_type:"Subsciber", zip_code: 94127 )
    trip_10 = Trip.create(duration: 2, start_date:"09/01/2018", end_date:"09/01/2018", bike_id: 2, subscription_type:"Subsciber", zip_code: 94127 )
    trip_11 = Trip.create(duration: 2, start_date:"09/01/2018", end_date:"09/01/2018", bike_id: 2, subscription_type:"Subsciber", zip_code: 94127 )
    trip_12 = Trip.create(duration: 2, start_date:"09/01/2018", end_date:"09/01/2018", bike_id: 2, subscription_type:"Subsciber", zip_code: 94127 )
    trip_13= Trip.create(duration: 2, start_date:"09/01/2018", end_date:"09/01/2018", bike_id: 2, subscription_type:"Subsciber", zip_code: 94127 )
    trip_14 = Trip.create(duration: 2, start_date:"09/01/2018", end_date:"09/01/2018", bike_id: 2, subscription_type:"Subsciber", zip_code: 94127 )
    trip_15 = Trip.create(duration: 2, start_date:"09/01/2018", end_date:"09/01/2018", bike_id: 2, subscription_type:"Subsciber", zip_code: 94127 )
    trip_16 = Trip.create(duration: 2, start_date:"09/01/2018", end_date:"09/01/2018", bike_id: 2, subscription_type:"Subsciber", zip_code: 94127 )
    trip_17 = Trip.create(duration: 2, start_date:"09/01/2018", end_date:"09/01/2018", bike_id: 2, subscription_type:"Subsciber", zip_code: 94127 )
    trip_18 = Trip.create(duration: 2, start_date:"09/01/2018", end_date:"09/01/2018", bike_id: 2, subscription_type:"Subsciber", zip_code: 94127 )
    trip_19 = Trip.create(duration: 2, start_date:"09/01/2018", end_date:"09/01/2018", bike_id: 2, subscription_type:"Subsciber", zip_code: 94127 )
    trip_20 = Trip.create(duration: 2, start_date:"09/01/2018", end_date:"09/01/2018", bike_id: 2, subscription_type:"Subsciber", zip_code: 94127 )
    trip_21 = Trip.create(duration: 2, start_date:"09/01/2018", end_date:"09/01/2018", bike_id: 2, subscription_type:"Subsciber", zip_code: 94127 )
    trip_22 = Trip.create(duration: 2, start_date:"09/01/2018", end_date:"09/01/2018", bike_id: 2, subscription_type:"Subsciber", zip_code: 94127 )
    trip_23 = Trip.create(duration: 2, start_date:"09/01/2018", end_date:"09/01/2018", bike_id: 2, subscription_type:"Subsciber", zip_code: 94127 )
    trip_24 = Trip.create(duration: 2, start_date:"09/01/2018", end_date:"09/01/2018", bike_id: 2, subscription_type:"Subsciber", zip_code: 94127 )
    trip_25 = Trip.create(duration: 2, start_date:"09/01/2018", end_date:"09/01/2018", bike_id: 2, subscription_type:"Subsciber", zip_code: 94127 )
    trip_26 = Trip.create(duration: 2, start_date:"09/01/2018", end_date:"09/01/2018", bike_id: 2, subscription_type:"Subsciber", zip_code: 94127 )
    trip_27 = Trip.create(duration: 2, start_date:"09/01/2018", end_date:"09/01/2018", bike_id: 2, subscription_type:"Subsciber", zip_code: 94127 )
    trip_28 = Trip.create(duration: 2, start_date:"09/01/2018", end_date:"09/01/2018", bike_id: 2, subscription_type:"Subsciber", zip_code: 94127 )
    trip_29 = Trip.create(duration: 2, start_date:"09/01/2018", end_date:"09/01/2018", bike_id: 2, subscription_type:"Subsciber", zip_code: 94127 )
    trip_30 = Trip.create(duration: 2, start_date:"09/01/2018", end_date:"09/01/2018", bike_id: 2, subscription_type:"Subsciber", zip_code: 94127 )
    trip_31 = Trip.create(duration: 2, start_date:"09/01/2018", end_date:"09/01/2018", bike_id: 2, subscription_type:"Subsciber", zip_code: 94127 )
    visit trips_path
    expect(page).to have_content(trip_1.duration)
    expect(page).to have_content(trip_4.start_date)
    expect(page).to have_content(trip_10.end_date)
    expect(page).to have_content(trip_15.bike_id)
    expect(page).to have_content(trip_20.subscription_type)
    expect(page).to have_content(trip_30.zip_code)
    expect(page).to_not have_content(trip_31.duration)
    expect(page).to have_selector(:link_or_button, 'Next Page')

  end
end
# As a visitor,
# When I visit the trips index,
# I see the first 30 trips (duration, start date, start station, end date, end station, bike id, subscription type, zip code),
# I also see a button to see more pages of trips,
#
# When I visit a second page, there should be buttons to move both forward and backward in time.
