require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe LeaveGrantsController do

  # This should return the minimal set of attributes required to create a valid
  # LeaveGrant. As you add validations to LeaveGrant, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "name" => "MyString" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # LeaveGrantsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all leave_grants as @leave_grants" do
      leave_grant = LeaveGrant.create! valid_attributes
      get :index, {}, valid_session
      assigns(:leave_grants).should eq([leave_grant])
    end
  end

  describe "GET show" do
    it "assigns the requested leave_grant as @leave_grant" do
      leave_grant = LeaveGrant.create! valid_attributes
      get :show, {:id => leave_grant.to_param}, valid_session
      assigns(:leave_grant).should eq(leave_grant)
    end
  end

  describe "GET new" do
    it "assigns a new leave_grant as @leave_grant" do
      get :new, {}, valid_session
      assigns(:leave_grant).should be_a_new(LeaveGrant)
    end
  end

  describe "GET edit" do
    it "assigns the requested leave_grant as @leave_grant" do
      leave_grant = LeaveGrant.create! valid_attributes
      get :edit, {:id => leave_grant.to_param}, valid_session
      assigns(:leave_grant).should eq(leave_grant)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new LeaveGrant" do
        expect {
          post :create, {:leave_grant => valid_attributes}, valid_session
        }.to change(LeaveGrant, :count).by(1)
      end

      it "assigns a newly created leave_grant as @leave_grant" do
        post :create, {:leave_grant => valid_attributes}, valid_session
        assigns(:leave_grant).should be_a(LeaveGrant)
        assigns(:leave_grant).should be_persisted
      end

      it "redirects to the created leave_grant" do
        post :create, {:leave_grant => valid_attributes}, valid_session
        response.should redirect_to(LeaveGrant.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved leave_grant as @leave_grant" do
        # Trigger the behavior that occurs when invalid params are submitted
        LeaveGrant.any_instance.stub(:save).and_return(false)
        post :create, {:leave_grant => { "name" => "invalid value" }}, valid_session
        assigns(:leave_grant).should be_a_new(LeaveGrant)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        LeaveGrant.any_instance.stub(:save).and_return(false)
        post :create, {:leave_grant => { "name" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested leave_grant" do
        leave_grant = LeaveGrant.create! valid_attributes
        # Assuming there are no other leave_grants in the database, this
        # specifies that the LeaveGrant created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        LeaveGrant.any_instance.should_receive(:update_attributes).with({ "name" => "MyString" })
        put :update, {:id => leave_grant.to_param, :leave_grant => { "name" => "MyString" }}, valid_session
      end

      it "assigns the requested leave_grant as @leave_grant" do
        leave_grant = LeaveGrant.create! valid_attributes
        put :update, {:id => leave_grant.to_param, :leave_grant => valid_attributes}, valid_session
        assigns(:leave_grant).should eq(leave_grant)
      end

      it "redirects to the leave_grant" do
        leave_grant = LeaveGrant.create! valid_attributes
        put :update, {:id => leave_grant.to_param, :leave_grant => valid_attributes}, valid_session
        response.should redirect_to(leave_grant)
      end
    end

    describe "with invalid params" do
      it "assigns the leave_grant as @leave_grant" do
        leave_grant = LeaveGrant.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        LeaveGrant.any_instance.stub(:save).and_return(false)
        put :update, {:id => leave_grant.to_param, :leave_grant => { "name" => "invalid value" }}, valid_session
        assigns(:leave_grant).should eq(leave_grant)
      end

      it "re-renders the 'edit' template" do
        leave_grant = LeaveGrant.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        LeaveGrant.any_instance.stub(:save).and_return(false)
        put :update, {:id => leave_grant.to_param, :leave_grant => { "name" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested leave_grant" do
      leave_grant = LeaveGrant.create! valid_attributes
      expect {
        delete :destroy, {:id => leave_grant.to_param}, valid_session
      }.to change(LeaveGrant, :count).by(-1)
    end

    it "redirects to the leave_grants list" do
      leave_grant = LeaveGrant.create! valid_attributes
      delete :destroy, {:id => leave_grant.to_param}, valid_session
      response.should redirect_to(leave_grants_url)
    end
  end

end
