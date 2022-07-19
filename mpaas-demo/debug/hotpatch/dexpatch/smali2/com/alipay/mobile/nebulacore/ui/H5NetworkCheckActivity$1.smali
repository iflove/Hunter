.class Lcom/alipay/mobile/nebulacore/ui/H5NetworkCheckActivity$1;
.super Ljava/lang/Object;
.source "H5NetworkCheckActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/ui/H5NetworkCheckActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nebulacore/ui/H5NetworkCheckActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/ui/H5NetworkCheckActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/ui/H5NetworkCheckActivity;

    .line 47
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/ui/H5NetworkCheckActivity$1;->a:Lcom/alipay/mobile/nebulacore/ui/H5NetworkCheckActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 50
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5NetworkCheckActivity$1;->a:Lcom/alipay/mobile/nebulacore/ui/H5NetworkCheckActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/ui/H5NetworkCheckActivity;->finish()V

    .line 51
    return-void
.end method
