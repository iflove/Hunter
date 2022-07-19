.class public final Lcom/uc/webview/export/internal/setup/n;
.super Lcom/uc/webview/export/internal/setup/UCSubSetupTask;
.source "U4Source"

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/uc/webview/export/internal/setup/UCSubSetupTask<",
        "Lcom/uc/webview/export/internal/setup/n;",
        "Lcom/uc/webview/export/internal/setup/n;",
        ">;",
        "Landroid/webkit/ValueCallback<",
        "Landroid/util/Pair<",
        "Ljava/lang/String;",
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;>;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/uc/webview/export/internal/setup/UCSubSetupTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 0

    .line 14
    check-cast p1, Landroid/util/Pair;

    .line 1023
    invoke-virtual {p0, p1}, Lcom/uc/webview/export/internal/setup/n;->callbackStat(Landroid/util/Pair;)V

    .line 14
    return-void
.end method

.method public final run()V
    .locals 0

    .line 18
    sput-object p0, Lcom/uc/webview/export/internal/SDKFactory;->b:Landroid/webkit/ValueCallback;

    .line 19
    return-void
.end method
