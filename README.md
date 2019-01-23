# GumRoad Seller's Portal

## The Exercise
[x] Reflect purchases made in the seller's balance
[x] Reflect refunds made in the seller's balance
[x] Create payouts for purchases made up to a week before the payout date
[ ] Allow dynamic scheduling of payouts
[x] Add indicies to tables

## Key files & folders

| Path  | Test Status |
| ------------- | ------------- |
| (lib/payouts.rb) (includes all functionality for issuing payouts)  | [ ] |
| app/models | [x]  |
| app/controllers/purchases_controller.rb | [x]  |
| app/jobs/payout_job.rb | [ ]  |
| db/ | N/A  |
| test/ | N/A  |

## Tests

To install and run the tests locally:
1. `git clone github.com:lolaodelola/gumroad_sellers_portal.git`
2. `cd gumroad_sellers_portal`
3. `rake db:setup`
4. `bundle`
5. `rails test`

