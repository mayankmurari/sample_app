require 'spec_helper'

describe "AuthenticationPages" do
  subject {page}
  describe "signin page" do
    before {visit signin_page}
      it { Should have_content('Sign in')}
      it { Should have_title('Sign in')}
    end
  end
end
