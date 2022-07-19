.class final Lcom/uc/webview/export/internal/setup/bt;
.super Ljava/lang/Object;
.source "U4Source"

# interfaces
.implements Landroid/webkit/ValueCallback;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceiveValue(Ljava/lang/Object;)V
    .locals 0

    .line 90
    const/4 p1, 0x0

    sput-boolean p1, Lcom/uc/webview/export/internal/SDKFactory;->j:Z

    .line 91
    invoke-static {}, Lcom/uc/webview/export/internal/SDKFactory;->g()V

    .line 92
    return-void
.end method
