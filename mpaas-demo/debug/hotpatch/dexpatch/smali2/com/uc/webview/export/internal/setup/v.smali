.class final Lcom/uc/webview/export/internal/setup/v;
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
.field final synthetic a:Lcom/uc/webview/export/internal/setup/o;


# direct methods
.method constructor <init>(Lcom/uc/webview/export/internal/setup/o;)V
    .locals 0

    .line 169
    iput-object p1, p0, Lcom/uc/webview/export/internal/setup/v;->a:Lcom/uc/webview/export/internal/setup/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 5

    .line 169
    check-cast p1, Lcom/uc/webview/export/internal/setup/l;

    .line 1172
    invoke-static {}, Lcom/uc/webview/export/internal/utility/k;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ThickSetupTask_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "soFilePath"

    invoke-virtual {p1, v1}, Lcom/uc/webview/export/internal/setup/l;->getOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 1174
    :goto_0
    if-nez v0, :cond_1

    .line 1175
    const-string v0, "dexFilePath"

    invoke-virtual {p1, v0}, Lcom/uc/webview/export/internal/setup/l;->getOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1177
    :cond_1
    if-nez v0, :cond_2

    .line 1178
    const-string v0, "ucmZipFile"

    invoke-virtual {p1, v0}, Lcom/uc/webview/export/internal/setup/l;->getOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1180
    :cond_2
    if-nez v0, :cond_3

    .line 1181
    const-string v0, "ucmLibDir"

    invoke-virtual {p1, v0}, Lcom/uc/webview/export/internal/setup/l;->getOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1183
    :cond_3
    if-nez v0, :cond_4

    .line 1184
    const-string v0, "ucmKrlDir"

    invoke-virtual {p1, v0}, Lcom/uc/webview/export/internal/setup/l;->getOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1186
    :cond_4
    if-nez v0, :cond_5

    .line 1187
    const-string v0, "ucmCfgFile"

    invoke-virtual {p1, v0}, Lcom/uc/webview/export/internal/setup/l;->getOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1190
    :cond_5
    new-instance v1, Lcom/uc/webview/export/internal/setup/UCSetupException;

    const/16 v2, 0xfa5

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    .line 1191
    const-string v0, "Multi crash detected in [%s]."

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/uc/webview/export/internal/setup/UCSetupException;-><init>(ILjava/lang/String;)V

    .line 1190
    invoke-virtual {p1, v1}, Lcom/uc/webview/export/internal/setup/l;->setException(Lcom/uc/webview/export/internal/setup/UCSetupException;)V

    .line 1195
    const/4 v0, 0x0

    const-string v1, "die"

    invoke-virtual {p1, v1, v0}, Lcom/uc/webview/export/internal/setup/l;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    .line 1197
    const/16 v0, 0xc5

    .line 1199
    invoke-virtual {p1}, Lcom/uc/webview/export/internal/setup/l;->getException()Lcom/uc/webview/export/internal/setup/UCSetupException;

    move-result-object p1

    invoke-virtual {p1}, Lcom/uc/webview/export/internal/setup/UCSetupException;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1197
    invoke-static {v0, p1}, Lcom/uc/webview/export/internal/uc/startup/b;->a(ILjava/lang/String;)V

    .line 169
    return-void
.end method
