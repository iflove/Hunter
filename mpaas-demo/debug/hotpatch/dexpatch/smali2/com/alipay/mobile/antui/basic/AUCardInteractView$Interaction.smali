.class public Lcom/alipay/mobile/antui/basic/AUCardInteractView$Interaction;
.super Ljava/lang/Object;
.source "AUCardInteractView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/antui/basic/AUCardInteractView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Interaction"
.end annotation


# instance fields
.field public colorStyle:Ljava/lang/String;

.field public icon:Lcom/alipay/mobile/antui/iconfont/model/IconInfo;

.field public schema:Ljava/lang/String;

.field public text:Ljava/lang/String;

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 224
    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobile/antui/iconfont/model/IconInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "icon"    # Lcom/alipay/mobile/antui/iconfont/model/IconInfo;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "schema"    # Ljava/lang/String;
    .param p4, "type"    # Ljava/lang/String;

    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 238
    iput-object p1, p0, Lcom/alipay/mobile/antui/basic/AUCardInteractView$Interaction;->icon:Lcom/alipay/mobile/antui/iconfont/model/IconInfo;

    .line 239
    iput-object p2, p0, Lcom/alipay/mobile/antui/basic/AUCardInteractView$Interaction;->text:Ljava/lang/String;

    .line 240
    iput-object p3, p0, Lcom/alipay/mobile/antui/basic/AUCardInteractView$Interaction;->schema:Ljava/lang/String;

    .line 241
    iput-object p4, p0, Lcom/alipay/mobile/antui/basic/AUCardInteractView$Interaction;->type:Ljava/lang/String;

    .line 242
    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobile/antui/iconfont/model/IconInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "icon"    # Lcom/alipay/mobile/antui/iconfont/model/IconInfo;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "schema"    # Ljava/lang/String;
    .param p4, "type"    # Ljava/lang/String;
    .param p5, "colorStyle"    # Ljava/lang/String;

    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 245
    iput-object p1, p0, Lcom/alipay/mobile/antui/basic/AUCardInteractView$Interaction;->icon:Lcom/alipay/mobile/antui/iconfont/model/IconInfo;

    .line 246
    iput-object p2, p0, Lcom/alipay/mobile/antui/basic/AUCardInteractView$Interaction;->text:Ljava/lang/String;

    .line 247
    iput-object p3, p0, Lcom/alipay/mobile/antui/basic/AUCardInteractView$Interaction;->schema:Ljava/lang/String;

    .line 248
    iput-object p4, p0, Lcom/alipay/mobile/antui/basic/AUCardInteractView$Interaction;->type:Ljava/lang/String;

    .line 249
    iput-object p5, p0, Lcom/alipay/mobile/antui/basic/AUCardInteractView$Interaction;->colorStyle:Ljava/lang/String;

    .line 250
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "schema"    # Ljava/lang/String;

    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 227
    iput-object p1, p0, Lcom/alipay/mobile/antui/basic/AUCardInteractView$Interaction;->text:Ljava/lang/String;

    .line 228
    iput-object p2, p0, Lcom/alipay/mobile/antui/basic/AUCardInteractView$Interaction;->schema:Ljava/lang/String;

    .line 229
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "schema"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;

    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 232
    iput-object p1, p0, Lcom/alipay/mobile/antui/basic/AUCardInteractView$Interaction;->text:Ljava/lang/String;

    .line 233
    iput-object p2, p0, Lcom/alipay/mobile/antui/basic/AUCardInteractView$Interaction;->schema:Ljava/lang/String;

    .line 234
    iput-object p3, p0, Lcom/alipay/mobile/antui/basic/AUCardInteractView$Interaction;->type:Ljava/lang/String;

    .line 235
    return-void
.end method
