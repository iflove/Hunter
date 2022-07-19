.class final Lcom/alipay/mobile/antui/dialog/AUImageDialog$1;
.super Ljava/lang/Object;
.source "AUImageDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/antui/dialog/AUImageDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/antui/dialog/AUImageDialog;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/antui/dialog/AUImageDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/antui/dialog/AUImageDialog;

    .line 69
    iput-object p1, p0, Lcom/alipay/mobile/antui/dialog/AUImageDialog$1;->a:Lcom/alipay/mobile/antui/dialog/AUImageDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 73
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUImageDialog$1;->a:Lcom/alipay/mobile/antui/dialog/AUImageDialog;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->cancel()V

    .line 74
    return-void
.end method
