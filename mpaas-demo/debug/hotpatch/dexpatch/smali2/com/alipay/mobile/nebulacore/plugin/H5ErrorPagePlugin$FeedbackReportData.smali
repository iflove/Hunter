.class public Lcom/alipay/mobile/nebulacore/plugin/H5ErrorPagePlugin$FeedbackReportData;
.super Ljava/lang/Object;
.source "H5ErrorPagePlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/nebulacore/plugin/H5ErrorPagePlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FeedbackReportData"
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nebulacore/plugin/H5ErrorPagePlugin;

.field public bizCode:Ljava/lang/String;

.field public bizMsg:Ljava/lang/String;

.field public bizName:Ljava/lang/String;

.field public bizUrl:Ljava/lang/String;

.field public viewName:Ljava/lang/String;

.field public webViewVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/nebulacore/plugin/H5ErrorPagePlugin;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/plugin/H5ErrorPagePlugin;

    .line 130
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5ErrorPagePlugin$FeedbackReportData;->a:Lcom/alipay/mobile/nebulacore/plugin/H5ErrorPagePlugin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
