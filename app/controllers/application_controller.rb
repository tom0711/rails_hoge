class ApplicationController < ActionController::Base
  # CSRF脆弱性攻撃に対する挙動（CSRF対策）
  # protect_from_forgery with: :exception

  # 以下のようにブロックを用いてコールバックを定義することも可能
  # before_action do
  #   redirect_to access_denied_path if params[:token].blank?
  # end

  # アクションコールバックのスキップ(skip_before_action, skip_after_action, skip_around_action)
  # before_action :require_login
  # def require_login
  #   # ログインを確認し、非ログイン時にリダイレクトする処理
  # end

end
