.class final Lcom/alipay/mobile/antui/dialog/AUNoticeDialog$2;
.super Ljava/lang/Object;
.source "AUNoticeDialog.java"

# interfaces
.implements Lcom/alipay/mobile/antui/basic/AUTextView$OnVisibilityChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;->setCustomLayout(Landroid/content/Context;ILandroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;

    .line 246
    iput-object p1, p0, Lcom/alipay/mobile/antui/dialog/AUNoticeDialog$2;->a:Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChange(I)V
    .locals 4
    .param p1, "visibility"    # I

    .line 249
    const/4 v0, 0x0

    const/16 v1, 0x8

    if-ne p1, v1, :cond_0

    .line 250
    iget-object v1, p0, Lcom/alipay/mobile/antui/dialog/AUNoticeDialog$2;->a:Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;

    # getter for: Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;->mMsg:Lcom/alipay/mobile/antui/basic/AUTextView;
    invoke-static {v1}, Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;->access$200(Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;)Lcom/alipay/mobile/antui/basic/AUTextView;

    move-result-object v1

    const/16 v2, 0x13

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/antui/basic/AUTextView;->setGravity(I)V

    .line 251
    iget-object v1, p0, Lcom/alipay/mobile/antui/dialog/AUNoticeDialog$2;->a:Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;

    # getter for: Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;->mMsgContent:Landroid/widget/ScrollView;
    invoke-static {v1}, Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;->access$300(Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;)Landroid/widget/ScrollView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 252
    .local v0, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    move-object v0, v1

    const/4 v2, 0x0

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 253
    iget-object v1, p0, Lcom/alipay/mobile/antui/dialog/AUNoticeDialog$2;->a:Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;

    # getter for: Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;->mMsgContent:Landroid/widget/ScrollView;
    invoke-static {v1}, Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;->access$300(Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;)Landroid/widget/ScrollView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 254
    .end local v0    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    return-void

    .line 255
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/antui/dialog/AUNoticeDialog$2;->a:Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;

    # getter for: Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;->mMsg:Lcom/alipay/mobile/antui/basic/AUTextView;
    invoke-static {v1}, Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;->access$200(Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;)Lcom/alipay/mobile/antui/basic/AUTextView;

    move-result-object v1

    const/16 v2, 0x33

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/antui/basic/AUTextView;->setGravity(I)V

    .line 256
    iget-object v1, p0, Lcom/alipay/mobile/antui/dialog/AUNoticeDialog$2;->a:Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;

    # getter for: Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;->mMsgContent:Landroid/widget/ScrollView;
    invoke-static {v1}, Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;->access$300(Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;)Landroid/widget/ScrollView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 257
    .restart local v0    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    move-object v0, v1

    iget-object v2, p0, Lcom/alipay/mobile/antui/dialog/AUNoticeDialog$2;->a:Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;

    # getter for: Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;->access$400(Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alipay/mobile/antui/R$dimen;->AU_SPACE4:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 258
    iget-object v1, p0, Lcom/alipay/mobile/antui/dialog/AUNoticeDialog$2;->a:Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;

    # getter for: Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;->mMsgContent:Landroid/widget/ScrollView;
    invoke-static {v1}, Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;->access$300(Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;)Landroid/widget/ScrollView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 260
    .end local v0    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    return-void
.end method
