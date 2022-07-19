.class public Lcom/alipay/mobile/nebula/config/NebulaMetaInfoParser;
.super Ljava/lang/Object;
.source "NebulaMetaInfoParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/nebula/config/NebulaMetaInfoParser$PluginInfoErrorHandler;,
        Lcom/alipay/mobile/nebula/config/NebulaMetaInfoParser$PluginInfoContentHandler;
    }
.end annotation


# static fields
.field public static final KEY_EXTENSION_BUNDLE_NAME:Ljava/lang/String; = "bundleName"

.field public static final KEY_EXTENSION_CLASS_NAME:Ljava/lang/String; = "extensionClass"

.field public static final KEY_EXTENSION_FILTERSTRS:Ljava/lang/String; = "filters"

.field public static final KEY_EXTENSION_INFO:Ljava/lang/String; = "extension"

.field public static final KEY_EXTENSION_ISLAZY:Ljava/lang/String; = "isLazy"

.field public static final KEY_EXTENSION_SCOPE_CLASS_NAME:Ljava/lang/String; = "scope"

.field public static final KEY_EXTENSION_TYPE:Ljava/lang/String; = "type"

.field public static final KEY_NEBULA_METAINFO:Ljava/lang/String; = "nebula-metainfo"

.field public static final KEY_PLUGIN_BUNDLE_NAME:Ljava/lang/String; = "bundleName"

.field public static final KEY_PLUGIN_CLASS_NAME:Ljava/lang/String; = "className"

.field public static final KEY_PLUGIN_EVENTS:Ljava/lang/String; = "events"

.field public static final KEY_PLUGIN_INFO:Ljava/lang/String; = "plugininfo"

.field public static final KEY_PLUGIN_LAZY_INIT:Ljava/lang/String; = "lazyInit"

.field public static final KEY_PLUGIN_SCOPE:Ljava/lang/String; = "scope"

.field public static final META_INF_NEBULA_METAINFO_MF:Ljava/lang/String; = "META-INF/NEBULA-METAINFO.MF"

.field public static final NEBULA_METAINFO_XML:Ljava/lang/String; = "nebula-metainfo.xml"

.field private static final STATE_EXTENSION_BUNDLE_NAME:I = 0x15

.field private static final STATE_EXTENSION_CLASS_NAME:I = 0x16

.field private static final STATE_EXTENSION_EVENTS_NAME:I = 0x18

.field private static final STATE_EXTENSION_LAZY_INIT:I = 0x1a

.field private static final STATE_EXTENSION_SCOPE_NAME:I = 0x17

.field private static final STATE_EXTENSION_TYPE:I = 0x19

.field private static final STATE_PLUGIN_BUNDLE_NAME:I = 0xb

.field private static final STATE_PLUGIN_CLASS_NAME:I = 0xc

.field private static final STATE_PLUGIN_EVENTS_NAME:I = 0xe

.field private static final STATE_PLUGIN_LAZY_INIT:I = 0xf

.field private static final STATE_PLUGIN_SCOPE_NAME:I = 0xd

.field private static final STATE_UNKNOWN:I = -0x1

.field public static final TAG:Ljava/lang/String; = "NebulaMetaInfoParser"


# instance fields
.field private mState:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/nebula/config/NebulaMetaInfoParser;->mState:I

    .line 81
    return-void
.end method

.method static synthetic access$200(Lcom/alipay/mobile/nebula/config/NebulaMetaInfoParser;)I
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebula/config/NebulaMetaInfoParser;

    .line 24
    iget v0, p0, Lcom/alipay/mobile/nebula/config/NebulaMetaInfoParser;->mState:I

    return v0
.end method

.method static synthetic access$202(Lcom/alipay/mobile/nebula/config/NebulaMetaInfoParser;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebula/config/NebulaMetaInfoParser;
    .param p1, "x1"    # I

    .line 24
    iput p1, p0, Lcom/alipay/mobile/nebula/config/NebulaMetaInfoParser;->mState:I

    return p1
.end method

.method private doReadNebulaMetaInfo(Ljava/io/InputStream;)Ljava/util/List;
    .locals 5
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/nebulax/kernel/extension/registry/NebulaConfigBase<",
            "*>;>;"
        }
    .end annotation

    .line 84
    const/4 v0, 0x0

    .line 85
    .local v0, "list":Ljava/util/List;
    if-eqz p1, :cond_0

    .line 87
    :try_start_0
    invoke-static {}, Lorg/xml/sax/helpers/XMLReaderFactory;->createXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v1

    .line 88
    .local v1, "reader":Lorg/xml/sax/XMLReader;
    new-instance v2, Lcom/alipay/mobile/nebula/config/NebulaMetaInfoParser$PluginInfoContentHandler;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/alipay/mobile/nebula/config/NebulaMetaInfoParser$PluginInfoContentHandler;-><init>(Lcom/alipay/mobile/nebula/config/NebulaMetaInfoParser;Lcom/alipay/mobile/nebula/config/NebulaMetaInfoParser$1;)V

    .line 89
    .local v2, "contentHandler":Lcom/alipay/mobile/nebula/config/NebulaMetaInfoParser$PluginInfoContentHandler;
    invoke-interface {v1, v2}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 90
    new-instance v4, Lcom/alipay/mobile/nebula/config/NebulaMetaInfoParser$PluginInfoErrorHandler;

    invoke-direct {v4, p0, v3}, Lcom/alipay/mobile/nebula/config/NebulaMetaInfoParser$PluginInfoErrorHandler;-><init>(Lcom/alipay/mobile/nebula/config/NebulaMetaInfoParser;Lcom/alipay/mobile/nebula/config/NebulaMetaInfoParser$1;)V

    invoke-interface {v1, v4}, Lorg/xml/sax/XMLReader;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    .line 91
    new-instance v3, Lorg/xml/sax/InputSource;

    invoke-direct {v3, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v1, v3}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 92
    invoke-virtual {v2}, Lcom/alipay/mobile/nebula/config/NebulaMetaInfoParser$PluginInfoContentHandler;->getList()Ljava/util/List;

    move-result-object v3
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    .line 96
    .end local v1    # "reader":Lorg/xml/sax/XMLReader;
    .end local v2    # "contentHandler":Lcom/alipay/mobile/nebula/config/NebulaMetaInfoParser$PluginInfoContentHandler;
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


# virtual methods
.method public readNebulaMetaInfo(Ljava/io/File;)Ljava/util/List;
    .locals 1
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/nebulax/kernel/extension/registry/NebulaConfigBase<",
            "*>;>;"
        }
    .end annotation

    .line 119
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebula/config/NebulaMetaInfoParser;->readNebulaMetaInfo(Ljava/io/InputStream;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public readNebulaMetaInfo(Ljava/io/InputStream;)Ljava/util/List;
    .locals 2
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/nebulax/kernel/extension/registry/NebulaConfigBase<",
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
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebula/config/NebulaMetaInfoParser;->doReadNebulaMetaInfo(Ljava/io/InputStream;)Ljava/util/List;

    move-result-object v0

    .line 107
    .local v0, "list":Ljava/util/List;
    if-eqz p1, :cond_1

    .line 109
    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    goto :goto_0

    .line 110
    :catch_0
    move-exception v1

    .line 115
    :cond_1
    :goto_0
    return-object v0
.end method
