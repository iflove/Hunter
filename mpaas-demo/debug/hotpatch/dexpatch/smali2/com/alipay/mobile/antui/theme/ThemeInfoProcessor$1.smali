.class final Lcom/alipay/mobile/antui/theme/ThemeInfoProcessor$1;
.super Ljava/lang/Object;
.source "ThemeInfoProcessor.java"

# interfaces
.implements Lcom/alipay/mobile/antui/excutor/ConfigCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/antui/theme/ThemeInfoProcessor;->getConfig(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/antui/theme/ThemeCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alipay/mobile/antui/theme/ThemeCallback;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/alipay/mobile/antui/theme/ThemeCallback;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/alipay/mobile/antui/theme/ThemeInfoProcessor$1;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/mobile/antui/theme/ThemeInfoProcessor$1;->b:Lcom/alipay/mobile/antui/theme/ThemeCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKeyBack(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "config"    # Ljava/lang/String;

    .line 27
    iget-object v0, p0, Lcom/alipay/mobile/antui/theme/ThemeInfoProcessor$1;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/mobile/antui/theme/ThemeInfoProcessor$1;->b:Lcom/alipay/mobile/antui/theme/ThemeCallback;

    invoke-static {v0, p2, v1}, Lcom/alipay/mobile/antui/theme/ThemeInfoProcessor;->dealConfig(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/antui/theme/ThemeCallback;)V

    .line 28
    return-void
.end method
