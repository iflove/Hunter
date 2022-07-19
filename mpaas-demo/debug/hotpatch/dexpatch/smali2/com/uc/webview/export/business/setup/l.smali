.class final Lcom/uc/webview/export/business/setup/l;
.super Ljava/util/HashMap;
.source "U4Source"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Landroid/util/Pair<",
        "Landroid/webkit/ValueCallback<",
        "Lcom/uc/webview/export/internal/setup/BaseSetupTask;",
        ">;",
        "Landroid/webkit/ValueCallback<",
        "Lcom/uc/webview/export/internal/setup/BaseSetupTask;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/uc/webview/export/business/setup/a;


# direct methods
.method constructor <init>(Lcom/uc/webview/export/business/setup/a;)V
    .locals 3

    .line 147
    iput-object p1, p0, Lcom/uc/webview/export/business/setup/l;->a:Lcom/uc/webview/export/business/setup/a;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 149
    new-instance v0, Landroid/util/Pair;

    .line 151
    invoke-static {p1}, Lcom/uc/webview/export/business/setup/a;->j(Lcom/uc/webview/export/business/setup/a;)Landroid/webkit/ValueCallback;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 149
    const-string v1, "exception"

    invoke-virtual {p0, v1, v0}, Lcom/uc/webview/export/business/setup/l;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    new-instance v0, Landroid/util/Pair;

    .line 154
    invoke-static {p1}, Lcom/uc/webview/export/business/setup/a;->k(Lcom/uc/webview/export/business/setup/a;)Landroid/webkit/ValueCallback;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 152
    const-string v1, "die_delegate"

    invoke-virtual {p0, v1, v0}, Lcom/uc/webview/export/business/setup/l;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    new-instance v0, Landroid/util/Pair;

    .line 157
    invoke-static {p1}, Lcom/uc/webview/export/business/setup/a;->l(Lcom/uc/webview/export/business/setup/a;)Landroid/webkit/ValueCallback;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 155
    const-string v1, "be_init_success"

    invoke-virtual {p0, v1, v0}, Lcom/uc/webview/export/business/setup/l;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    new-instance v0, Landroid/util/Pair;

    .line 160
    invoke-static {p1}, Lcom/uc/webview/export/business/setup/a;->m(Lcom/uc/webview/export/business/setup/a;)Landroid/webkit/ValueCallback;

    move-result-object p1

    invoke-direct {v0, v2, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 158
    const-string p1, "setup"

    invoke-virtual {p0, p1, v0}, Lcom/uc/webview/export/business/setup/l;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    return-void
.end method
