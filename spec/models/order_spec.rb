require 'rails_helper'

RSpec.describe Order, type: :model do
  describe 'DB table' do
    it { is_expected.to have_db_column :id}
    it { is_expected.to respond_to :order_items }
    it { is_expected.to respond_to :add }

  end

  describe 'States' do
    it { is_expected.to have_states :pending, :rejected, :finalized }
    it { is_expected.to reject_states :finalized, when: :rejected }
    it { is_expected.to reject_events :payment_cleared, when: :rejected }
    it { is_expected.to handle_events :payment_cleared, :payment_declined, when: :pending }
    it { is_expected.to transition_from :pending, to_state: :finalized, on_event: :payment_cleared}
    it { is_expected.to transition_from :pending, to_state: :rejected, on_event: :payment_declined}
  end
end
