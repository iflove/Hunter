.class Lcom/alipay/mobile/framework/util/xml/MetaInfoXmlParser$MetaInfoErrorHandler;
.super Ljava/lang/Object;
.source "MetaInfoXmlParser.java"

# interfaces
.implements Lorg/xml/sax/ErrorHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/framework/util/xml/MetaInfoXmlParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MetaInfoErrorHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/framework/util/xml/MetaInfoXmlParser;


# direct methods
.method private constructor <init>(Lcom/alipay/mobile/framework/util/xml/MetaInfoXmlParser;)V
    .locals 0

    .line 270
    iput-object p1, p0, Lcom/alipay/mobile/framework/util/xml/MetaInfoXmlParser$MetaInfoErrorHandler;->this$0:Lcom/alipay/mobile/framework/util/xml/MetaInfoXmlParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/framework/util/xml/MetaInfoXmlParser;Lcom/alipay/mobile/framework/util/xml/MetaInfoXmlParser$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/alipay/mobile/framework/util/xml/MetaInfoXmlParser;
    .param p2, "x1"    # Lcom/alipay/mobile/framework/util/xml/MetaInfoXmlParser$1;

    .line 270
    invoke-direct {p0, p1}, Lcom/alipay/mobile/framework/util/xml/MetaInfoXmlParser$MetaInfoErrorHandler;-><init>(Lcom/alipay/mobile/framework/util/xml/MetaInfoXmlParser;)V

    return-void
.end method


# virtual methods
.method public error(Lorg/xml/sax/SAXParseException;)V
    .locals 1
    .param p1, "exception"    # Lorg/xml/sax/SAXParseException;

    .line 278
    const-string v0, "MetaInfoXmlReader"

    invoke-static {v0, p1}, Lcom/alipay/mobile/quinox/log/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 279
    return-void
.end method

.method public fatalError(Lorg/xml/sax/SAXParseException;)V
    .locals 1
    .param p1, "exception"    # Lorg/xml/sax/SAXParseException;

    .line 283
    const-string v0, "MetaInfoXmlReader"

    invoke-static {v0, p1}, Lcom/alipay/mobile/quinox/log/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 284
    return-void
.end method

.method public warning(Lorg/xml/sax/SAXParseException;)V
    .locals 1
    .param p1, "exception"    # Lorg/xml/sax/SAXParseException;

    .line 273
    const-string v0, "MetaInfoXmlReader"

    invoke-static {v0, p1}, Lcom/alipay/mobile/quinox/log/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 274
    return-void
.end method
