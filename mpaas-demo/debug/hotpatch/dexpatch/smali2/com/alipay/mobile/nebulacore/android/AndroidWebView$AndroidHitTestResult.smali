.class Lcom/alipay/mobile/nebulacore/android/AndroidWebView$AndroidHitTestResult;
.super Ljava/lang/Object;
.source "AndroidWebView.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/webview/APHitTestResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/nebulacore/android/AndroidWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AndroidHitTestResult"
.end annotation


# instance fields
.field a:Landroid/webkit/WebView$HitTestResult;

.field final synthetic b:Lcom/alipay/mobile/nebulacore/android/AndroidWebView;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/android/AndroidWebView;Landroid/webkit/WebView$HitTestResult;)V
    .locals 0
    .param p2, "hitTestResult"    # Landroid/webkit/WebView$HitTestResult;

    .line 578
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView$AndroidHitTestResult;->b:Lcom/alipay/mobile/nebulacore/android/AndroidWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 579
    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView$AndroidHitTestResult;->a:Landroid/webkit/WebView$HitTestResult;

    .line 580
    return-void
.end method


# virtual methods
.method public getExtra()Ljava/lang/String;
    .locals 1

    .line 584
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView$AndroidHitTestResult;->a:Landroid/webkit/WebView$HitTestResult;

    invoke-virtual {v0}, Landroid/webkit/WebView$HitTestResult;->getExtra()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 589
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView$AndroidHitTestResult;->a:Landroid/webkit/WebView$HitTestResult;

    invoke-virtual {v0}, Landroid/webkit/WebView$HitTestResult;->getType()I

    move-result v0

    return v0
.end method
