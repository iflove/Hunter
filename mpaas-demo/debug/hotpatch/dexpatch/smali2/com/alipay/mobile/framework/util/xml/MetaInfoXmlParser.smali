.class public Lcom/alipay/mobile/framework/util/xml/MetaInfoXmlParser;
.super Ljava/lang/Object;
.source "MetaInfoXmlParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/framework/util/xml/MetaInfoXmlParser$MetaInfoErrorHandler;,
        Lcom/alipay/mobile/framework/util/xml/MetaInfoXmlParser$MetaInfoContentHandler;
    }
.end annotation


# static fields
.field public static DDD:Ljava/lang/String; = null

.field public static final KEY_APPLICATION:Ljava/lang/String; = "application"

.field public static final KEY_APPLICATION_APP_ID:Ljava/lang/String; = "appId"

.field public static final KEY_APPLICATION_ENGINE_TYPE:Ljava/lang/String; = "engineTyp"

.field public static final KEY_BROADCAST_RECEIVER:Ljava/lang/String; = "broadcastReceiver"

.field public static final KEY_BROADCAST_RECEIVER_ACTION:Ljava/lang/String; = "action"

.field public static final KEY_CLASS_NAME:Ljava/lang/String; = "className"

.field public static final KEY_META_INFO:Ljava/lang/String; = "metainfo"

.field public static final KEY_SERVICE:Ljava/lang/String; = "service"

.field public static final KEY_SERVICE_INTERFACE_NAME:Ljava/lang/String; = "interfaceName"

.field public static final KEY_SERVICE_IS_LAZY:Ljava/lang/String; = "isLazy"

.field public static final KEY_VALVE:Ljava/lang/String; = "valve"

.field public static final KEY_VALVE_PIPELINE_NAME:Ljava/lang/String; = "pipelineName"

.field public static final KEY_VALVE_THREAD_NAME:Ljava/lang/String; = "threadName"

.field public static final KEY_VALVE_WEIGHT:Ljava/lang/String; = "weight"

.field public static final META_INFO_XML:Ljava/lang/String; = "metainfo.xml"

.field public static final TAG:Ljava/lang/String; = "MetaInfoXmlReader"


# instance fields
.field private a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 74
    const-string v0, "http://apache.org/xml/features/disallow-doctype-decl"

    sput-object v0, Lcom/alipay/mobile/framework/util/xml/MetaInfoXmlParser;->DDD:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/framework/util/xml/MetaInfoXmlParser;->a:I

    .line 78
    return-void
.end method

.method private a(Ljava/io/InputStream;)Ljava/util/List;
    .locals 5
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/framework/MicroDescription<",
            "*>;>;"
        }
    .end annotation

    .line 81
    const/4 v0, 0x0

    .line 82
    .local v0, "list":Ljava/util/List;
    if-eqz p1, :cond_0

    .line 84
    :try_start_0
    invoke-static {}, Lorg/xml/sax/helpers/XMLReaderFactory;->createXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v1

    .line 89
    .local v1, "reader":Lorg/xml/sax/XMLReader;
    new-instance v2, Lcom/alipay/mobile/framework/util/xml/MetaInfoXmlParser$MetaInfoContentHandler;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/alipay/mobile/framework/util/xml/MetaInfoXmlParser$MetaInfoContentHandler;-><init>(Lcom/alipay/mobile/framework/util/xml/MetaInfoXmlParser;Lcom/alipay/mobile/framework/util/xml/MetaInfoXmlParser$1;)V

    .line 90
    .local v2, "contentHandler":Lcom/alipay/mobile/framework/util/xml/MetaInfoXmlParser$MetaInfoContentHandler;
    invoke-interface {v1, v2}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 91
    new-instance v4, Lcom/alipay/mobile/framework/util/xml/MetaInfoXmlParser$MetaInfoErrorHandler;

    invoke-direct {v4, p0, v3}, Lcom/alipay/mobile/framework/util/xml/MetaInfoXmlParser$MetaInfoErrorHandler;-><init>(Lcom/alipay/mobile/framework/util/xml/MetaInfoXmlParser;Lcom/alipay/mobile/framework/util/xml/MetaInfoXmlParser$1;)V

    invoke-interface {v1, v4}, Lorg/xml/sax/XMLReader;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    .line 92
    new-instance v3, Lorg/xml/sax/InputSource;

    invoke-direct {v3, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v1, v3}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 93
    invoke-virtual {v2}, Lcom/alipay/mobile/framework/util/xml/MetaInfoXmlParser$MetaInfoContentHandler;->getList()Ljava/util/List;

    move-result-object v3
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    .line 96
    .end local v1    # "reader":Lorg/xml/sax/XMLReader;
    .end local v2    # "contentHandler":Lcom/alipay/mobile/framework/util/xml/MetaInfoXmlParser$MetaInfoContentHandler;
    goto :goto_0

    .line 94
    :catch_0
    move-exception v1

    .line 95
    .local v1, "e":Lorg/xml/sax/SAXException;
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Failed to parse xml."

    invoke-direct {v2, v3, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 98
    .end local v1    # "e":Lorg/xml/sax/SAXException;
    :cond_0
    :goto_0
    return-object v0
.end method

.method static synthetic access$200(Lcom/alipay/mobile/framework/util/xml/MetaInfoXmlParser;)I
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/framework/util/xml/MetaInfoXmlParser;

    .line 25
    iget v0, p0, Lcom/alipay/mobile/framework/util/xml/MetaInfoXmlParser;->a:I

    return v0
.end method

.method static synthetic access$202(Lcom/alipay/mobile/framework/util/xml/MetaInfoXmlParser;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/framework/util/xml/MetaInfoXmlParser;
    .param p1, "x1"    # I

    .line 25
    iput p1, p0, Lcom/alipay/mobile/framework/util/xml/MetaInfoXmlParser;->a:I

    return p1
.end method


# virtual methods
.method public readMetaInfo(Ljava/io/File;)Ljava/util/List;
    .locals 1
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/framework/MicroDescription<",
            "*>;>;"
        }
    .end annotation

    .line 113
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/framework/util/xml/MetaInfoXmlParser;->readMetaInfo(Ljava/io/InputStream;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public readMetaInfo(Ljava/io/InputStream;)Ljava/util/List;
    .locals 1
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/framework/MicroDescription<",
            "*>;>;"
        }
    .end annotation

    .line 102
    if-nez p1, :cond_0

    .line 103
    const/4 v0, 0x0

    return-object v0

    .line 106
    :cond_0
    invoke-direct {p0, p1}, Lcom/alipay/mobile/framework/util/xml/MetaInfoXmlParser;->a(Ljava/io/InputStream;)Ljava/util/List;

    move-result-object v0

    .line 107
    .local v0, "list":Ljava/util/List;
    invoke-static {p1}, Lcom/alipay/mobile/quinox/utils/StreamUtil;->closeSafely(Ljava/io/Closeable;)V

    .line 109
    return-object v0
.end method
