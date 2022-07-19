.class final Lcom/uc/webview/export/business/setup/r;
.super Ljava/lang/Object;
.source "U4Source"

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/webkit/ValueCallback<",
        "Lcom/uc/webview/export/internal/setup/l;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/uc/webview/export/business/setup/o;


# direct methods
.method constructor <init>(Lcom/uc/webview/export/business/setup/o;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/uc/webview/export/business/setup/r;->a:Lcom/uc/webview/export/business/setup/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 3

    .line 96
    check-cast p1, Lcom/uc/webview/export/internal/setup/l;

    .line 1099
    invoke-static {}, Lcom/uc/webview/export/business/setup/o;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "die "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1100
    iget-object v0, p0, Lcom/uc/webview/export/business/setup/r;->a:Lcom/uc/webview/export/business/setup/o;

    .line 1101
    invoke-static {v0}, Lcom/uc/webview/export/business/setup/o;->a(Lcom/uc/webview/export/business/setup/o;)Lcom/uc/webview/export/business/a;

    move-result-object v0

    .line 2012
    iget-wide v0, v0, Lcom/uc/webview/export/business/a;->a:J

    .line 1101
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .line 1100
    const-string v1, "bs_dec_od"

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1103
    invoke-static {}, Lcom/uc/webview/export/internal/utility/k;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1104
    invoke-static {}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->saveData()V

    .line 1105
    invoke-static {}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->upload()V

    .line 1107
    :cond_0
    iget-object v0, p0, Lcom/uc/webview/export/business/setup/r;->a:Lcom/uc/webview/export/business/setup/o;

    invoke-static {v0, p1}, Lcom/uc/webview/export/business/setup/o;->a(Lcom/uc/webview/export/business/setup/o;Lcom/uc/webview/export/internal/setup/l;)V

    .line 96
    return-void
.end method
