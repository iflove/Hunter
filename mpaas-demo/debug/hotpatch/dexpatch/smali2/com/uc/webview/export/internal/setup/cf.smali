.class final Lcom/uc/webview/export/internal/setup/cf;
.super Ljava/lang/Object;
.source "U4Source"

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/webkit/ValueCallback<",
        "Lcom/uc/webview/export/utility/download/UpdateTask;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/uc/webview/export/internal/setup/bo;

.field final synthetic b:Lcom/uc/webview/export/internal/setup/bw;


# direct methods
.method constructor <init>(Lcom/uc/webview/export/internal/setup/bw;Lcom/uc/webview/export/internal/setup/bo;)V
    .locals 0

    .line 331
    iput-object p1, p0, Lcom/uc/webview/export/internal/setup/cf;->b:Lcom/uc/webview/export/internal/setup/bw;

    iput-object p2, p0, Lcom/uc/webview/export/internal/setup/cf;->a:Lcom/uc/webview/export/internal/setup/bo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 2

    .line 331
    nop

    .line 1334
    iget-object p1, p0, Lcom/uc/webview/export/internal/setup/cf;->a:Lcom/uc/webview/export/internal/setup/bo;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/uc/webview/export/internal/setup/bo;->a(ILjava/lang/Object;)V

    .line 331
    return-void
.end method
