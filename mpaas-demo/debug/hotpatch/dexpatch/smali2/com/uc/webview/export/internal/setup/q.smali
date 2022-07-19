.class final Lcom/uc/webview/export/internal/setup/q;
.super Ljava/lang/Object;
.source "U4Source"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/uc/webview/export/internal/setup/l;

.field final synthetic b:Lcom/uc/webview/export/internal/setup/UCMRunningInfo;

.field final synthetic c:Lcom/uc/webview/export/internal/setup/p;


# direct methods
.method constructor <init>(Lcom/uc/webview/export/internal/setup/p;Lcom/uc/webview/export/internal/setup/l;Lcom/uc/webview/export/internal/setup/UCMRunningInfo;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/uc/webview/export/internal/setup/q;->c:Lcom/uc/webview/export/internal/setup/p;

    iput-object p2, p0, Lcom/uc/webview/export/internal/setup/q;->a:Lcom/uc/webview/export/internal/setup/l;

    iput-object p3, p0, Lcom/uc/webview/export/internal/setup/q;->b:Lcom/uc/webview/export/internal/setup/UCMRunningInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 98
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/q;->c:Lcom/uc/webview/export/internal/setup/p;

    iget-object v0, v0, Lcom/uc/webview/export/internal/setup/p;->a:Lcom/uc/webview/export/internal/setup/o;

    iget-object v1, p0, Lcom/uc/webview/export/internal/setup/q;->b:Lcom/uc/webview/export/internal/setup/UCMRunningInfo;

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/setup/o;->b(Lcom/uc/webview/export/internal/setup/o;Lcom/uc/webview/export/internal/setup/UCMRunningInfo;)V

    .line 99
    return-void
.end method
