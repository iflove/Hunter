.class final Lcom/uc/webview/export/business/setup/g;
.super Ljava/util/HashMap;
.source "U4Source"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/uc/webview/export/business/setup/a;


# direct methods
.method constructor <init>(Lcom/uc/webview/export/business/setup/a;Ljava/lang/String;)V
    .locals 1

    .line 63
    iput-object p1, p0, Lcom/uc/webview/export/business/setup/g;->b:Lcom/uc/webview/export/business/setup/a;

    iput-object p2, p0, Lcom/uc/webview/export/business/setup/g;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 65
    const-string v0, "bs_e_it"

    invoke-virtual {p0, v0, p2}, Lcom/uc/webview/export/business/setup/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    invoke-static {p1}, Lcom/uc/webview/export/business/setup/a;->f(Lcom/uc/webview/export/business/setup/a;)Lcom/uc/webview/export/business/setup/a$a;

    move-result-object p2

    iget-object p2, p2, Lcom/uc/webview/export/business/setup/a$a;->b:Ljava/lang/String;

    const-string v0, "bs_e_ic"

    invoke-virtual {p0, v0, p2}, Lcom/uc/webview/export/business/setup/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    invoke-static {p1}, Lcom/uc/webview/export/business/setup/a;->f(Lcom/uc/webview/export/business/setup/a;)Lcom/uc/webview/export/business/setup/a$a;

    move-result-object p2

    iget-object p2, p2, Lcom/uc/webview/export/business/setup/a$a;->c:Ljava/lang/String;

    const-string v0, "bs_e_ic_c"

    invoke-virtual {p0, v0, p2}, Lcom/uc/webview/export/business/setup/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    invoke-static {p1}, Lcom/uc/webview/export/business/setup/a;->f(Lcom/uc/webview/export/business/setup/a;)Lcom/uc/webview/export/business/setup/a$a;

    move-result-object p2

    iget-object p2, p2, Lcom/uc/webview/export/business/setup/a$a;->d:Ljava/lang/String;

    const-string v0, "bs_e_sec"

    invoke-virtual {p0, v0, p2}, Lcom/uc/webview/export/business/setup/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    invoke-static {p1}, Lcom/uc/webview/export/business/setup/a;->f(Lcom/uc/webview/export/business/setup/a;)Lcom/uc/webview/export/business/setup/a$a;

    move-result-object p2

    iget-object p2, p2, Lcom/uc/webview/export/business/setup/a$a;->e:Ljava/lang/String;

    const-string v0, "bs_e_sec_c"

    invoke-virtual {p0, v0, p2}, Lcom/uc/webview/export/business/setup/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    invoke-static {p1}, Lcom/uc/webview/export/business/setup/a;->f(Lcom/uc/webview/export/business/setup/a;)Lcom/uc/webview/export/business/setup/a$a;

    move-result-object p2

    iget-object p2, p2, Lcom/uc/webview/export/business/setup/a$a;->f:Ljava/lang/String;

    const-string v0, "bs_e_suc"

    invoke-virtual {p0, v0, p2}, Lcom/uc/webview/export/business/setup/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    invoke-static {p1}, Lcom/uc/webview/export/business/setup/a;->f(Lcom/uc/webview/export/business/setup/a;)Lcom/uc/webview/export/business/setup/a$a;

    move-result-object p1

    iget-object p1, p1, Lcom/uc/webview/export/business/setup/a$a;->g:Ljava/lang/String;

    const-string p2, "bs_e_suc_c"

    invoke-virtual {p0, p2, p1}, Lcom/uc/webview/export/business/setup/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    return-void
.end method
