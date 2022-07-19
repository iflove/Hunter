.class Lcom/alipay/mobile/core/loading/impl/LoadingPage$1;
.super Ljava/lang/Object;
.source "LoadingPage.java"

# interfaces
.implements Lcom/alipay/mobile/framework/loading/LoadingView$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/core/loading/impl/LoadingPage;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/core/loading/impl/LoadingPage;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/core/loading/impl/LoadingPage;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/core/loading/impl/LoadingPage;

    .line 112
    iput-object p1, p0, Lcom/alipay/mobile/core/loading/impl/LoadingPage$1;->this$0:Lcom/alipay/mobile/core/loading/impl/LoadingPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/alipay/mobile/core/loading/impl/LoadingPage$1;->this$0:Lcom/alipay/mobile/core/loading/impl/LoadingPage;

    invoke-virtual {v0}, Lcom/alipay/mobile/core/loading/impl/LoadingPage;->cancelLoadingPage()V

    .line 116
    return-void
.end method
