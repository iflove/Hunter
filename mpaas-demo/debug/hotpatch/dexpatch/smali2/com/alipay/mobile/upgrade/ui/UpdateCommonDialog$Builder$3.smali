.class Lcom/alipay/mobile/upgrade/ui/UpdateCommonDialog$Builder$3;
.super Ljava/lang/Object;
.source "UpdateCommonDialog.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/upgrade/ui/UpdateCommonDialog$Builder;->create()Lcom/alipay/mobile/upgrade/ui/UpdateCommonDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/upgrade/ui/UpdateCommonDialog$Builder;

.field final synthetic val$updateMsgLL:Lcom/alipay/mobile/upgrade/widget/APLinearLayout;

.field final synthetic val$updateMsgTv:Lcom/alipay/mobile/upgrade/widget/APTextView;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/upgrade/ui/UpdateCommonDialog$Builder;Lcom/alipay/mobile/upgrade/widget/APTextView;Lcom/alipay/mobile/upgrade/widget/APLinearLayout;)V
    .locals 0

    .line 195
    iput-object p1, p0, Lcom/alipay/mobile/upgrade/ui/UpdateCommonDialog$Builder$3;->this$0:Lcom/alipay/mobile/upgrade/ui/UpdateCommonDialog$Builder;

    iput-object p2, p0, Lcom/alipay/mobile/upgrade/ui/UpdateCommonDialog$Builder$3;->val$updateMsgTv:Lcom/alipay/mobile/upgrade/widget/APTextView;

    iput-object p3, p0, Lcom/alipay/mobile/upgrade/ui/UpdateCommonDialog$Builder$3;->val$updateMsgLL:Lcom/alipay/mobile/upgrade/widget/APLinearLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 6

    .line 198
    iget-object v0, p0, Lcom/alipay/mobile/upgrade/ui/UpdateCommonDialog$Builder$3;->val$updateMsgTv:Lcom/alipay/mobile/upgrade/widget/APTextView;

    invoke-virtual {v0}, Lcom/alipay/mobile/upgrade/widget/APTextView;->getLineCount()I

    move-result v0

    .line 199
    const/4 v1, 0x5

    if-le v0, v1, :cond_0

    .line 200
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/alipay/mobile/upgrade/ui/UpdateCommonDialog$Builder$3;->this$0:Lcom/alipay/mobile/upgrade/ui/UpdateCommonDialog$Builder;

    # getter for: Lcom/alipay/mobile/upgrade/ui/UpdateCommonDialog$Builder;->context:Landroid/content/Context;
    invoke-static {v2}, Lcom/alipay/mobile/upgrade/ui/UpdateCommonDialog$Builder;->access$300(Lcom/alipay/mobile/upgrade/ui/UpdateCommonDialog$Builder;)Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x42be0000    # 95.0f

    invoke-static {v2, v3}, Lcom/alipay/mobile/upgrade/widget/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 201
    iget-object v1, p0, Lcom/alipay/mobile/upgrade/ui/UpdateCommonDialog$Builder$3;->this$0:Lcom/alipay/mobile/upgrade/ui/UpdateCommonDialog$Builder;

    # getter for: Lcom/alipay/mobile/upgrade/ui/UpdateCommonDialog$Builder;->context:Landroid/content/Context;
    invoke-static {v1}, Lcom/alipay/mobile/upgrade/ui/UpdateCommonDialog$Builder;->access$300(Lcom/alipay/mobile/upgrade/ui/UpdateCommonDialog$Builder;)Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-static {v1, v2}, Lcom/alipay/mobile/upgrade/widget/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v1

    iget-object v3, p0, Lcom/alipay/mobile/upgrade/ui/UpdateCommonDialog$Builder$3;->this$0:Lcom/alipay/mobile/upgrade/ui/UpdateCommonDialog$Builder;

    # getter for: Lcom/alipay/mobile/upgrade/ui/UpdateCommonDialog$Builder;->context:Landroid/content/Context;
    invoke-static {v3}, Lcom/alipay/mobile/upgrade/ui/UpdateCommonDialog$Builder;->access$300(Lcom/alipay/mobile/upgrade/ui/UpdateCommonDialog$Builder;)Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x41200000    # 10.0f

    invoke-static {v3, v4}, Lcom/alipay/mobile/upgrade/widget/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v3

    iget-object v4, p0, Lcom/alipay/mobile/upgrade/ui/UpdateCommonDialog$Builder$3;->this$0:Lcom/alipay/mobile/upgrade/ui/UpdateCommonDialog$Builder;

    # getter for: Lcom/alipay/mobile/upgrade/ui/UpdateCommonDialog$Builder;->context:Landroid/content/Context;
    invoke-static {v4}, Lcom/alipay/mobile/upgrade/ui/UpdateCommonDialog$Builder;->access$300(Lcom/alipay/mobile/upgrade/ui/UpdateCommonDialog$Builder;)Landroid/content/Context;

    move-result-object v4

    const/high16 v5, 0x41400000    # 12.0f

    invoke-static {v4, v5}, Lcom/alipay/mobile/upgrade/widget/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v4

    iget-object v5, p0, Lcom/alipay/mobile/upgrade/ui/UpdateCommonDialog$Builder$3;->this$0:Lcom/alipay/mobile/upgrade/ui/UpdateCommonDialog$Builder;

    # getter for: Lcom/alipay/mobile/upgrade/ui/UpdateCommonDialog$Builder;->context:Landroid/content/Context;
    invoke-static {v5}, Lcom/alipay/mobile/upgrade/ui/UpdateCommonDialog$Builder;->access$300(Lcom/alipay/mobile/upgrade/ui/UpdateCommonDialog$Builder;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v2}, Lcom/alipay/mobile/upgrade/widget/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v0, v1, v3, v4, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 202
    iget-object v1, p0, Lcom/alipay/mobile/upgrade/ui/UpdateCommonDialog$Builder$3;->val$updateMsgLL:Lcom/alipay/mobile/upgrade/widget/APLinearLayout;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/upgrade/widget/APLinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 204
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
