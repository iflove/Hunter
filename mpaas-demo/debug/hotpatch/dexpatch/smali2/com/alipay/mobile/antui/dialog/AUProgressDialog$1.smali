.class final Lcom/alipay/mobile/antui/dialog/AUProgressDialog$1;
.super Ljava/lang/Object;
.source "AUProgressDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/antui/dialog/AUProgressDialog;->dismiss()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/antui/dialog/AUProgressDialog;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/antui/dialog/AUProgressDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/antui/dialog/AUProgressDialog;

    .line 133
    iput-object p1, p0, Lcom/alipay/mobile/antui/dialog/AUProgressDialog$1;->a:Lcom/alipay/mobile/antui/dialog/AUProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUProgressDialog$1;->a:Lcom/alipay/mobile/antui/dialog/AUProgressDialog;

    # invokes: Lcom/alipay/mobile/antui/dialog/AUProgressDialog;->cancelAnimation()V
    invoke-static {v0}, Lcom/alipay/mobile/antui/dialog/AUProgressDialog;->access$000(Lcom/alipay/mobile/antui/dialog/AUProgressDialog;)V

    .line 137
    return-void
.end method
