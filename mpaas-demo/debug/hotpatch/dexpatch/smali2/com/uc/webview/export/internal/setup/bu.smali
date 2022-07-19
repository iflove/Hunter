.class final Lcom/uc/webview/export/internal/setup/bu;
.super Ljava/lang/Object;
.source "U4Source"

# interfaces
.implements Landroid/webkit/ValueCallback;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceiveValue(Ljava/lang/Object;)V
    .locals 0

    .line 85
    const/4 p1, 0x1

    sput-boolean p1, Lcom/uc/webview/export/internal/SDKFactory;->j:Z

    sput-boolean p1, Lcom/uc/webview/export/internal/SDKFactory;->k:Z

    .line 86
    return-void
.end method
