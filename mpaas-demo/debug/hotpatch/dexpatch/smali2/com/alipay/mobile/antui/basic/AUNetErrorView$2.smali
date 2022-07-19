.class final Lcom/alipay/mobile/antui/basic/AUNetErrorView$2;
.super Ljava/lang/Object;
.source "AUNetErrorView.java"

# interfaces
.implements Lcom/alipay/mobile/antui/api/VisibilityChangeObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/antui/basic/AUNetErrorView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/antui/basic/AUNetErrorView;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/antui/basic/AUNetErrorView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/antui/basic/AUNetErrorView;

    .line 116
    iput-object p1, p0, Lcom/alipay/mobile/antui/basic/AUNetErrorView$2;->a:Lcom/alipay/mobile/antui/basic/AUNetErrorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final visibilityChanged(I)V
    .locals 1
    .param p1, "visibility"    # I

    .line 119
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUNetErrorView$2;->a:Lcom/alipay/mobile/antui/basic/AUNetErrorView;

    # getter for: Lcom/alipay/mobile/antui/basic/AUNetErrorView;->mActionContainer:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->access$200(Lcom/alipay/mobile/antui/basic/AUNetErrorView;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 120
    return-void
.end method
