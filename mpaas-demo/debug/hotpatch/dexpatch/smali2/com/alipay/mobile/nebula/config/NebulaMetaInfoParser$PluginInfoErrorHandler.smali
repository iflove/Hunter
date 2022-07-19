.class Lcom/alipay/mobile/nebula/config/NebulaMetaInfoParser$PluginInfoErrorHandler;
.super Ljava/lang/Object;
.source "NebulaMetaInfoParser.java"

# interfaces
.implements Lorg/xml/sax/ErrorHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/nebula/config/NebulaMetaInfoParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PluginInfoErrorHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebula/config/NebulaMetaInfoParser;


# direct methods
.method private constructor <init>(Lcom/alipay/mobile/nebula/config/NebulaMetaInfoParser;)V
    .locals 0

    .line 276
    iput-object p1, p0, Lcom/alipay/mobile/nebula/config/NebulaMetaInfoParser$PluginInfoErrorHandler;->this$0:Lcom/alipay/mobile/nebula/config/NebulaMetaInfoParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/nebula/config/NebulaMetaInfoParser;Lcom/alipay/mobile/nebula/config/NebulaMetaInfoParser$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/alipay/mobile/nebula/config/NebulaMetaInfoParser;
    .param p2, "x1"    # Lcom/alipay/mobile/nebula/config/NebulaMetaInfoParser$1;

    .line 276
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebula/config/NebulaMetaInfoParser$PluginInfoErrorHandler;-><init>(Lcom/alipay/mobile/nebula/config/NebulaMetaInfoParser;)V

    return-void
.end method


# virtual methods
.method public error(Lorg/xml/sax/SAXParseException;)V
    .locals 0
    .param p1, "exception"    # Lorg/xml/sax/SAXParseException;

    .line 283
    return-void
.end method

.method public fatalError(Lorg/xml/sax/SAXParseException;)V
    .locals 0
    .param p1, "exception"    # Lorg/xml/sax/SAXParseException;

    .line 287
    return-void
.end method

.method public warning(Lorg/xml/sax/SAXParseException;)V
    .locals 0
    .param p1, "exception"    # Lorg/xml/sax/SAXParseException;

    .line 279
    return-void
.end method
