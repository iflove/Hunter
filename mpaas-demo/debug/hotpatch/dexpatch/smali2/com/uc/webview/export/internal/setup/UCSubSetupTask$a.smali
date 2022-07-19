.class public final Lcom/uc/webview/export/internal/setup/UCSubSetupTask$a;
.super Ljava/lang/Object;
.source "U4Source"

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uc/webview/export/internal/setup/UCSubSetupTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<CB_TYPE:",
        "Lcom/uc/webview/export/internal/setup/UCSubSetupTask<",
        "TCB_TYPE;TCB_TYPE;>;>",
        "Ljava/lang/Object;",
        "Landroid/webkit/ValueCallback<",
        "TCB_TYPE;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/uc/webview/export/internal/setup/UCSubSetupTask;


# direct methods
.method public constructor <init>(Lcom/uc/webview/export/internal/setup/UCSubSetupTask;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/uc/webview/export/internal/setup/UCSubSetupTask$a;->a:Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 1

    .line 105
    check-cast p1, Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    .line 1108
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/UCSubSetupTask$a;->a:Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    invoke-virtual {p1}, Lcom/uc/webview/export/internal/setup/UCSubSetupTask;->getStat()Landroid/util/Pair;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/uc/webview/export/internal/setup/UCSubSetupTask;->callbackStat(Landroid/util/Pair;)V

    .line 105
    return-void
.end method
