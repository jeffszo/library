require "test_helper"

class BookscasesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bookscase = bookscases(:one)
  end

  test "should get index" do
    get bookscases_url, as: :json
    assert_response :success
  end

  test "should create bookscase" do
    assert_difference("Bookscase.count") do
      post bookscases_url, params: { bookscase: { limit: @bookscase.limit } }, as: :json
    end

    assert_response :created
  end

  test "should show bookscase" do
    get bookscase_url(@bookscase), as: :json
    assert_response :success
  end

  test "should update bookscase" do
    patch bookscase_url(@bookscase), params: { bookscase: { limit: @bookscase.limit } }, as: :json
    assert_response :success
  end

  test "should destroy bookscase" do
    assert_difference("Bookscase.count", -1) do
      delete bookscase_url(@bookscase), as: :json
    end

    assert_response :no_content
  end
end
