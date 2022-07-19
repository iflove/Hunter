.class final Lcom/alipay/mobile/antui/theme/ThemeInfoProcessor$2;
.super Ljava/lang/Object;
.source "ThemeInfoProcessor.java"

# interfaces
.implements Lcom/alipay/mobile/antui/excutor/FileLoadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/antui/theme/ThemeInfoProcessor;->dealConfig(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/antui/theme/ThemeCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alipay/mobile/antui/theme/model/AUThemeModel;

.field final synthetic c:Lcom/alipay/mobile/antui/theme/ThemeCallback;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/alipay/mobile/antui/theme/model/AUThemeModel;Lcom/alipay/mobile/antui/theme/ThemeCallback;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/alipay/mobile/antui/theme/ThemeInfoProcessor$2;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/mobile/antui/theme/ThemeInfoProcessor$2;->b:Lcom/alipay/mobile/antui/theme/model/AUThemeModel;

    iput-object p3, p0, Lcom/alipay/mobile/antui/theme/ThemeInfoProcessor$2;->c:Lcom/alipay/mobile/antui/theme/ThemeCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "errorMessage"    # Ljava/lang/String;

    .line 60
    iget-object v0, p0, Lcom/alipay/mobile/antui/theme/ThemeInfoProcessor$2;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/mobile/antui/theme/ThemeInfoProcessor$2;->b:Lcom/alipay/mobile/antui/theme/model/AUThemeModel;

    iget-object v1, v1, Lcom/alipay/mobile/antui/theme/model/AUThemeModel;->version:Ljava/lang/String;

    const-string v2, "ChangeSkin"

    const-string v3, "ReadError"

    const/4 v4, 0x0

    invoke-static {v2, v3, v0, v1, v4}, Lcom/alipay/mobile/antui/utils/AuiLogger;->eventBehavor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 61
    return-void
.end method

.method public final onFinished(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "fileInfo"    # Ljava/lang/String;

    .line 54
    iget-object v0, p0, Lcom/alipay/mobile/antui/theme/ThemeInfoProcessor$2;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/mobile/antui/theme/ThemeInfoProcessor$2;->b:Lcom/alipay/mobile/antui/theme/model/AUThemeModel;

    iget-object v1, v1, Lcom/alipay/mobile/antui/theme/model/AUThemeModel;->version:Ljava/lang/String;

    const-string v2, "ChangeSkin"

    const-string v3, "ReadSuccess"

    const/4 v4, 0x0

    invoke-static {v2, v3, v0, v1, v4}, Lcom/alipay/mobile/antui/utils/AuiLogger;->eventBehavor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 55
    iget-object v0, p0, Lcom/alipay/mobile/antui/theme/ThemeInfoProcessor$2;->c:Lcom/alipay/mobile/antui/theme/ThemeCallback;

    iget-object v1, p0, Lcom/alipay/mobile/antui/theme/ThemeInfoProcessor$2;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/antui/theme/ThemeInfoProcessor$2;->b:Lcom/alipay/mobile/antui/theme/model/AUThemeModel;

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/antui/theme/ThemeCallback;->updateTheme(Ljava/lang/String;Lcom/alipay/mobile/antui/theme/model/AUThemeModel;)V

    .line 56
    return-void
.end method
