.class Lcom/alipay/mobile/nebula/config/NebulaMetaInfoParser$PluginInfoContentHandler;
.super Ljava/lang/Object;
.source "NebulaMetaInfoParser.java"

# interfaces
.implements Lorg/xml/sax/ContentHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/nebula/config/NebulaMetaInfoParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PluginInfoContentHandler"
.end annotation


# instance fields
.field buff:Ljava/lang/StringBuilder;

.field desc:Lcom/alipay/mobile/nebulax/kernel/extension/registry/NebulaConfigBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alipay/mobile/nebulax/kernel/extension/registry/NebulaConfigBase<",
            "*>;"
        }
    .end annotation
.end field

.field list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alipay/mobile/nebulax/kernel/extension/registry/NebulaConfigBase<",
            "*>;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/alipay/mobile/nebula/config/NebulaMetaInfoParser;


# direct methods
.method private constructor <init>(Lcom/alipay/mobile/nebula/config/NebulaMetaInfoParser;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/alipay/mobile/nebula/config/NebulaMetaInfoParser$PluginInfoContentHandler;->this$0:Lcom/alipay/mobile/nebula/config/NebulaMetaInfoParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/nebula/config/NebulaMetaInfoParser;Lcom/alipay/mobile/nebula/config/NebulaMetaInfoParser$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/alipay/mobile/nebula/config/NebulaMetaInfoParser;
    .param p2, "x1"    # Lcom/alipay/mobile/nebula/config/NebulaMetaInfoParser$1;

    .line 122
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebula/config/NebulaMetaInfoParser$PluginInfoContentHandler;-><init>(Lcom/alipay/mobile/nebula/config/NebulaMetaInfoParser;)V

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 4
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I

    .line 212
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    const/4 v1, 0x0

    .line 214
    .local v1, "str":Ljava/lang/String;
    move-object v1, v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 215
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebula/config/NebulaMetaInfoParser$PluginInfoContentHandler;->buff:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 221
    iget-object v0, p0, Lcom/alipay/mobile/nebula/config/NebulaMetaInfoParser$PluginInfoContentHandler;->buff:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 223
    .local v0, "string":Ljava/lang/String;
    iget-object v2, p0, Lcom/alipay/mobile/nebula/config/NebulaMetaInfoParser$PluginInfoContentHandler;->this$0:Lcom/alipay/mobile/nebula/config/NebulaMetaInfoParser;

    # getter for: Lcom/alipay/mobile/nebula/config/NebulaMetaInfoParser;->mState:I
    invoke-static {v2}, Lcom/alipay/mobile/nebula/config/NebulaMetaInfoParser;->access$200(Lcom/alipay/mobile/nebula/config/NebulaMetaInfoParser;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    packed-switch v2, :pswitch_data_1

    goto :goto_0

    .line 252
    :pswitch_0
    iget-object v2, p0, Lcom/alipay/mobile/nebula/config/NebulaMetaInfoParser$PluginInfoContentHandler;->desc:Lcom/alipay/mobile/nebulax/kernel/extension/registry/NebulaConfigBase;

    check-cast v2, Lcom/alipay/mobile/nebulax/kernel/extension/registry/ExtensionMetaInfo;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, v2, Lcom/alipay/mobile/nebulax/kernel/extension/registry/ExtensionMetaInfo;->isLazy:Z

    .line 253
    return-void

    .line 255
    :pswitch_1
    iget-object v2, p0, Lcom/alipay/mobile/nebula/config/NebulaMetaInfoParser$PluginInfoContentHandler;->desc:Lcom/alipay/mobile/nebulax/kernel/extension/registry/NebulaConfigBase;

    check-cast v2, Lcom/alipay/mobile/nebulax/kernel/extension/registry/ExtensionMetaInfo;

    iput-object v0, v2, Lcom/alipay/mobile/nebulax/kernel/extension/registry/ExtensionMetaInfo;->typeString:Ljava/lang/String;

    .line 260
    :goto_0
    return-void

    .line 246
    :pswitch_2
    iget-object v2, p0, Lcom/alipay/mobile/nebula/config/NebulaMetaInfoParser$PluginInfoContentHandler;->desc:Lcom/alipay/mobile/nebulax/kernel/extension/registry/NebulaConfigBase;

    check-cast v2, Lcom/alipay/mobile/nebulax/kernel/extension/registry/ExtensionMetaInfo;

    iput-object v0, v2, Lcom/alipay/mobile/nebulax/kernel/extension/registry/ExtensionMetaInfo;->filterStrs:Ljava/lang/String;

    .line 247
    return-void

    .line 249
    :pswitch_3
    iget-object v2, p0, Lcom/alipay/mobile/nebula/config/NebulaMetaInfoParser$PluginInfoContentHandler;->desc:Lcom/alipay/mobile/nebulax/kernel/extension/registry/NebulaConfigBase;

    check-cast v2, Lcom/alipay/mobile/nebulax/kernel/extension/registry/ExtensionMetaInfo;

    iput-object v0, v2, Lcom/alipay/mobile/nebulax/kernel/extension/registry/ExtensionMetaInfo;->scopeClassName:Ljava/lang/String;

    .line 250
    return-void

    .line 243
    :pswitch_4
    iget-object v2, p0, Lcom/alipay/mobile/nebula/config/NebulaMetaInfoParser$PluginInfoContentHandler;->desc:Lcom/alipay/mobile/nebulax/kernel/extension/registry/NebulaConfigBase;

    check-cast v2, Lcom/alipay/mobile/nebulax/kernel/extension/registry/ExtensionMetaInfo;

    iput-object v0, v2, Lcom/alipay/mobile/nebulax/kernel/extension/registry/ExtensionMetaInfo;->extensionClass:Ljava/lang/String;

    .line 244
    return-void

    .line 240
    :pswitch_5
    iget-object v2, p0, Lcom/alipay/mobile/nebula/config/NebulaMetaInfoParser$PluginInfoContentHandler;->desc:Lcom/alipay/mobile/nebulax/kernel/extension/registry/NebulaConfigBase;

    check-cast v2, Lcom/alipay/mobile/nebulax/kernel/extension/registry/ExtensionMetaInfo;

    iput-object v0, v2, Lcom/alipay/mobile/nebulax/kernel/extension/registry/ExtensionMetaInfo;->bundleName:Ljava/lang/String;

    .line 241
    return-void

    .line 237
    :pswitch_6
    iget-object v2, p0, Lcom/alipay/mobile/nebula/config/NebulaMetaInfoParser$PluginInfoContentHandler;->desc:Lcom/alipay/mobile/nebulax/kernel/extension/registry/NebulaConfigBase;

    check-cast v2, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, v2, Lcom/alipay/mobile/nebula/config/H5PluginConfig;->lazyInit:Z

    .line 238
    return-void

    .line 234
    :pswitch_7
    iget-object v2, p0, Lcom/alipay/mobile/nebula/config/NebulaMetaInfoParser$PluginInfoContentHandler;->desc:Lcom/alipay/mobile/nebulax/kernel/extension/registry/NebulaConfigBase;

    check-cast v2, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    iput-object v0, v2, Lcom/alipay/mobile/nebula/config/H5PluginConfig;->events:Ljava/lang/String;

    .line 235
    return-void

    .line 231
    :pswitch_8
    iget-object v2, p0, Lcom/alipay/mobile/nebula/config/NebulaMetaInfoParser$PluginInfoContentHandler;->desc:Lcom/alipay/mobile/nebulax/kernel/extension/registry/NebulaConfigBase;

    check-cast v2, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    iput-object v0, v2, Lcom/alipay/mobile/nebula/config/H5PluginConfig;->scope:Ljava/lang/String;

    .line 232
    return-void

    .line 228
    :pswitch_9
    iget-object v2, p0, Lcom/alipay/mobile/nebula/config/NebulaMetaInfoParser$PluginInfoContentHandler;->desc:Lcom/alipay/mobile/nebulax/kernel/extension/registry/NebulaConfigBase;

    check-cast v2, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    iput-object v0, v2, Lcom/alipay/mobile/nebula/config/H5PluginConfig;->className:Ljava/lang/String;

    .line 229
    return-void

    .line 225
    :pswitch_a
    iget-object v2, p0, Lcom/alipay/mobile/nebula/config/NebulaMetaInfoParser$PluginInfoContentHandler;->desc:Lcom/alipay/mobile/nebulax/kernel/extension/registry/NebulaConfigBase;

    check-cast v2, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    iput-object v0, v2, Lcom/alipay/mobile/nebula/config/H5PluginConfig;->bundleName:Ljava/lang/String;

    .line 226
    return-void

    .line 216
    .end local v0    # "string":Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x15
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public endDocument()V
    .locals 0

    .line 147
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;

    .line 203
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v3, 0x1

    aput-object p2, v1, v3

    const/4 v3, 0x2

    aput-object p3, v1, v3

    const-string v3, "endElement(uri=%s, localName=%s, qName=%s)"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 204
    iget-object v0, p0, Lcom/alipay/mobile/nebula/config/NebulaMetaInfoParser$PluginInfoContentHandler;->this$0:Lcom/alipay/mobile/nebula/config/NebulaMetaInfoParser;

    const/4 v1, -0x1

    # setter for: Lcom/alipay/mobile/nebula/config/NebulaMetaInfoParser;->mState:I
    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/config/NebulaMetaInfoParser;->access$202(Lcom/alipay/mobile/nebula/config/NebulaMetaInfoParser;I)I

    .line 205
    iget-object v0, p0, Lcom/alipay/mobile/nebula/config/NebulaMetaInfoParser$PluginInfoContentHandler;->buff:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/alipay/mobile/nebula/config/NebulaMetaInfoParser$PluginInfoContentHandler;->buff:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 208
    :cond_0
    return-void
.end method

.method public endPrefixMapping(Ljava/lang/String;)V
    .locals 0
    .param p1, "prefix"    # Ljava/lang/String;

    .line 157
    return-void
.end method

.method public getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/nebulax/kernel/extension/registry/NebulaConfigBase<",
            "*>;>;"
        }
    .end annotation

    .line 131
    iget-object v0, p0, Lcom/alipay/mobile/nebula/config/NebulaMetaInfoParser$PluginInfoContentHandler;->list:Ljava/util/List;

    return-object v0
.end method

.method public ignorableWhitespace([CII)V
    .locals 0
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I

    .line 265
    return-void
.end method

.method public processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .line 269
    return-void
.end method

.method public setDocumentLocator(Lorg/xml/sax/Locator;)V
    .locals 0
    .param p1, "locator"    # Lorg/xml/sax/Locator;

    .line 137
    return-void
.end method

.method public skippedEntity(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 273
    return-void
.end method

.method public startDocument()V
    .locals 0

    .line 142
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 8
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .param p4, "atts"    # Lorg/xml/sax/Attributes;

    .line 161
    const-string/jumbo v0, "nebula-metainfo"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebula/config/NebulaMetaInfoParser$PluginInfoContentHandler;->list:Ljava/util/List;

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebula/config/NebulaMetaInfoParser$PluginInfoContentHandler;->buff:Ljava/lang/StringBuilder;

    return-void

    .line 164
    :cond_0
    const-string/jumbo v0, "plugininfo"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 165
    new-instance v0, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    invoke-direct {v0}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebula/config/NebulaMetaInfoParser$PluginInfoContentHandler;->desc:Lcom/alipay/mobile/nebulax/kernel/extension/registry/NebulaConfigBase;

    .line 166
    iget-object v1, p0, Lcom/alipay/mobile/nebula/config/NebulaMetaInfoParser$PluginInfoContentHandler;->list:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 167
    :cond_1
    const-string v0, "extension"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 169
    :try_start_0
    new-instance v0, Lcom/alipay/mobile/nebulax/kernel/extension/registry/ExtensionMetaInfo;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "bridge"

    const/4 v7, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/alipay/mobile/nebulax/kernel/extension/registry/ExtensionMetaInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/alipay/mobile/nebula/config/NebulaMetaInfoParser$PluginInfoContentHandler;->desc:Lcom/alipay/mobile/nebulax/kernel/extension/registry/NebulaConfigBase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    goto :goto_0

    .line 171
    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 174
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/nebula/config/NebulaMetaInfoParser$PluginInfoContentHandler;->list:Ljava/util/List;

    iget-object v1, p0, Lcom/alipay/mobile/nebula/config/NebulaMetaInfoParser$PluginInfoContentHandler;->desc:Lcom/alipay/mobile/nebulax/kernel/extension/registry/NebulaConfigBase;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 176
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/nebula/config/NebulaMetaInfoParser$PluginInfoContentHandler;->desc:Lcom/alipay/mobile/nebulax/kernel/extension/registry/NebulaConfigBase;

    instance-of v0, v0, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v1, "bundleName"

    if-eqz v0, :cond_3

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 177
    iget-object v0, p0, Lcom/alipay/mobile/nebula/config/NebulaMetaInfoParser$PluginInfoContentHandler;->this$0:Lcom/alipay/mobile/nebula/config/NebulaMetaInfoParser;

    const/16 v1, 0xb

    # setter for: Lcom/alipay/mobile/nebula/config/NebulaMetaInfoParser;->mState:I
    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/config/NebulaMetaInfoParser;->access$202(Lcom/alipay/mobile/nebula/config/NebulaMetaInfoParser;I)I

    return-void

    .line 178
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/nebula/config/NebulaMetaInfoParser$PluginInfoContentHandler;->desc:Lcom/alipay/mobile/nebulax/kernel/extension/registry/NebulaConfigBase;

    instance-of v0, v0, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    if-eqz v0, :cond_4

    const-string v0, "className"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 179
    iget-object v0, p0, Lcom/alipay/mobile/nebula/config/NebulaMetaInfoParser$PluginInfoContentHandler;->this$0:Lcom/alipay/mobile/nebula/config/NebulaMetaInfoParser;

    const/16 v1, 0xc

    # setter for: Lcom/alipay/mobile/nebula/config/NebulaMetaInfoParser;->mState:I
    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/config/NebulaMetaInfoParser;->access$202(Lcom/alipay/mobile/nebula/config/NebulaMetaInfoParser;I)I

    return-void

    .line 180
    :cond_4
    iget-object v0, p0, Lcom/alipay/mobile/nebula/config/NebulaMetaInfoParser$PluginInfoContentHandler;->desc:Lcom/alipay/mobile/nebulax/kernel/extension/registry/NebulaConfigBase;

    instance-of v0, v0, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string/jumbo v2, "scope"

    if-eqz v0, :cond_5

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 181
    iget-object v0, p0, Lcom/alipay/mobile/nebula/config/NebulaMetaInfoParser$PluginInfoContentHandler;->this$0:Lcom/alipay/mobile/nebula/config/NebulaMetaInfoParser;

    const/16 v1, 0xd

    # setter for: Lcom/alipay/mobile/nebula/config/NebulaMetaInfoParser;->mState:I
    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/config/NebulaMetaInfoParser;->access$202(Lcom/alipay/mobile/nebula/config/NebulaMetaInfoParser;I)I

    return-void

    .line 182
    :cond_5
    iget-object v0, p0, Lcom/alipay/mobile/nebula/config/NebulaMetaInfoParser$PluginInfoContentHandler;->desc:Lcom/alipay/mobile/nebulax/kernel/extension/registry/NebulaConfigBase;

    instance-of v0, v0, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    if-eqz v0, :cond_6

    const-string v0, "events"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 183
    iget-object v0, p0, Lcom/alipay/mobile/nebula/config/NebulaMetaInfoParser$PluginInfoContentHandler;->this$0:Lcom/alipay/mobile/nebula/config/NebulaMetaInfoParser;

    const/16 v1, 0xe

    # setter for: Lcom/alipay/mobile/nebula/config/NebulaMetaInfoParser;->mState:I
    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/config/NebulaMetaInfoParser;->access$202(Lcom/alipay/mobile/nebula/config/NebulaMetaInfoParser;I)I

    return-void

    .line 184
    :cond_6
    iget-object v0, p0, Lcom/alipay/mobile/nebula/config/NebulaMetaInfoParser$PluginInfoContentHandler;->desc:Lcom/alipay/mobile/nebulax/kernel/extension/registry/NebulaConfigBase;

    instance-of v0, v0, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    if-eqz v0, :cond_7

    const-string v0, "lazyInit"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 185
    iget-object v0, p0, Lcom/alipay/mobile/nebula/config/NebulaMetaInfoParser$PluginInfoContentHandler;->this$0:Lcom/alipay/mobile/nebula/config/NebulaMetaInfoParser;

    const/16 v1, 0xf

    # setter for: Lcom/alipay/mobile/nebula/config/NebulaMetaInfoParser;->mState:I
    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/config/NebulaMetaInfoParser;->access$202(Lcom/alipay/mobile/nebula/config/NebulaMetaInfoParser;I)I

    return-void

    .line 186
    :cond_7
    iget-object v0, p0, Lcom/alipay/mobile/nebula/config/NebulaMetaInfoParser$PluginInfoContentHandler;->desc:Lcom/alipay/mobile/nebulax/kernel/extension/registry/NebulaConfigBase;

    instance-of v0, v0, Lcom/alipay/mobile/nebulax/kernel/extension/registry/ExtensionMetaInfo;

    if-eqz v0, :cond_8

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 187
    iget-object v0, p0, Lcom/alipay/mobile/nebula/config/NebulaMetaInfoParser$PluginInfoContentHandler;->this$0:Lcom/alipay/mobile/nebula/config/NebulaMetaInfoParser;

    const/16 v1, 0x15

    # setter for: Lcom/alipay/mobile/nebula/config/NebulaMetaInfoParser;->mState:I
    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/config/NebulaMetaInfoParser;->access$202(Lcom/alipay/mobile/nebula/config/NebulaMetaInfoParser;I)I

    return-void

    .line 188
    :cond_8
    iget-object v0, p0, Lcom/alipay/mobile/nebula/config/NebulaMetaInfoParser$PluginInfoContentHandler;->desc:Lcom/alipay/mobile/nebulax/kernel/extension/registry/NebulaConfigBase;

    instance-of v0, v0, Lcom/alipay/mobile/nebulax/kernel/extension/registry/ExtensionMetaInfo;

    if-eqz v0, :cond_9

    const-string v0, "extensionClass"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 189
    iget-object v0, p0, Lcom/alipay/mobile/nebula/config/NebulaMetaInfoParser$PluginInfoContentHandler;->this$0:Lcom/alipay/mobile/nebula/config/NebulaMetaInfoParser;

    const/16 v1, 0x16

    # setter for: Lcom/alipay/mobile/nebula/config/NebulaMetaInfoParser;->mState:I
    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/config/NebulaMetaInfoParser;->access$202(Lcom/alipay/mobile/nebula/config/NebulaMetaInfoParser;I)I

    return-void

    .line 190
    :cond_9
    iget-object v0, p0, Lcom/alipay/mobile/nebula/config/NebulaMetaInfoParser$PluginInfoContentHandler;->desc:Lcom/alipay/mobile/nebulax/kernel/extension/registry/NebulaConfigBase;

    instance-of v0, v0, Lcom/alipay/mobile/nebulax/kernel/extension/registry/ExtensionMetaInfo;

    if-eqz v0, :cond_a

    const-string v0, "filters"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 191
    iget-object v0, p0, Lcom/alipay/mobile/nebula/config/NebulaMetaInfoParser$PluginInfoContentHandler;->this$0:Lcom/alipay/mobile/nebula/config/NebulaMetaInfoParser;

    const/16 v1, 0x18

    # setter for: Lcom/alipay/mobile/nebula/config/NebulaMetaInfoParser;->mState:I
    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/config/NebulaMetaInfoParser;->access$202(Lcom/alipay/mobile/nebula/config/NebulaMetaInfoParser;I)I

    return-void

    .line 192
    :cond_a
    iget-object v0, p0, Lcom/alipay/mobile/nebula/config/NebulaMetaInfoParser$PluginInfoContentHandler;->desc:Lcom/alipay/mobile/nebulax/kernel/extension/registry/NebulaConfigBase;

    instance-of v0, v0, Lcom/alipay/mobile/nebulax/kernel/extension/registry/ExtensionMetaInfo;

    if-eqz v0, :cond_b

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 193
    iget-object v0, p0, Lcom/alipay/mobile/nebula/config/NebulaMetaInfoParser$PluginInfoContentHandler;->this$0:Lcom/alipay/mobile/nebula/config/NebulaMetaInfoParser;

    const/16 v1, 0x17

    # setter for: Lcom/alipay/mobile/nebula/config/NebulaMetaInfoParser;->mState:I
    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/config/NebulaMetaInfoParser;->access$202(Lcom/alipay/mobile/nebula/config/NebulaMetaInfoParser;I)I

    return-void

    .line 194
    :cond_b
    iget-object v0, p0, Lcom/alipay/mobile/nebula/config/NebulaMetaInfoParser$PluginInfoContentHandler;->desc:Lcom/alipay/mobile/nebulax/kernel/extension/registry/NebulaConfigBase;

    instance-of v0, v0, Lcom/alipay/mobile/nebulax/kernel/extension/registry/ExtensionMetaInfo;

    if-eqz v0, :cond_c

    const-string v0, "isLazy"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 195
    iget-object v0, p0, Lcom/alipay/mobile/nebula/config/NebulaMetaInfoParser$PluginInfoContentHandler;->this$0:Lcom/alipay/mobile/nebula/config/NebulaMetaInfoParser;

    const/16 v1, 0x1a

    # setter for: Lcom/alipay/mobile/nebula/config/NebulaMetaInfoParser;->mState:I
    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/config/NebulaMetaInfoParser;->access$202(Lcom/alipay/mobile/nebula/config/NebulaMetaInfoParser;I)I

    return-void

    .line 196
    :cond_c
    iget-object v0, p0, Lcom/alipay/mobile/nebula/config/NebulaMetaInfoParser$PluginInfoContentHandler;->desc:Lcom/alipay/mobile/nebulax/kernel/extension/registry/NebulaConfigBase;

    instance-of v0, v0, Lcom/alipay/mobile/nebulax/kernel/extension/registry/ExtensionMetaInfo;

    if-eqz v0, :cond_d

    const-string/jumbo v0, "type"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 197
    iget-object v0, p0, Lcom/alipay/mobile/nebula/config/NebulaMetaInfoParser$PluginInfoContentHandler;->this$0:Lcom/alipay/mobile/nebula/config/NebulaMetaInfoParser;

    const/16 v1, 0x19

    # setter for: Lcom/alipay/mobile/nebula/config/NebulaMetaInfoParser;->mState:I
    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/config/NebulaMetaInfoParser;->access$202(Lcom/alipay/mobile/nebula/config/NebulaMetaInfoParser;I)I

    .line 199
    :cond_d
    return-void
.end method

.method public startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;

    .line 152
    return-void
.end method
