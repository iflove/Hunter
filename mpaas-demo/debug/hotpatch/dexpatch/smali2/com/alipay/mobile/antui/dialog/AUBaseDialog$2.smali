.class final Lcom/alipay/mobile/antui/dialog/AUBaseDialog$2;
.super Ljava/lang/Object;
.source "AUBaseDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/antui/dialog/AUBaseDialog;->addHorizonButtonView(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/antui/api/OnItemClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/antui/api/OnItemClickListener;

.field final synthetic b:Lcom/alipay/mobile/antui/dialog/AUBaseDialog;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/antui/dialog/AUBaseDialog;Lcom/alipay/mobile/antui/api/OnItemClickListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/antui/dialog/AUBaseDialog;

    .line 151
    iput-object p1, p0, Lcom/alipay/mobile/antui/dialog/AUBaseDialog$2;->b:Lcom/alipay/mobile/antui/dialog/AUBaseDialog;

    iput-object p2, p0, Lcom/alipay/mobile/antui/dialog/AUBaseDialog$2;->a:Lcom/alipay/mobile/antui/api/OnItemClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 154
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUBaseDialog$2;->a:Lcom/alipay/mobile/antui/api/OnItemClickListener;

    if-eqz v0, :cond_0

    .line 155
    iget-object v1, p0, Lcom/alipay/mobile/antui/dialog/AUBaseDialog$2;->b:Lcom/alipay/mobile/antui/dialog/AUBaseDialog;

    iget-object v1, v1, Lcom/alipay/mobile/antui/dialog/AUBaseDialog;->mEnsureBtn:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/antui/api/OnItemClickListener;->onClick(Landroid/view/View;I)V

    .line 157
    :cond_0
    return-void
.end method
