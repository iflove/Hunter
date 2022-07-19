.class Lcom/alipay/mobile/framework/util/xml/MetaInfoXmlParser$MetaInfoContentHandler;
.super Ljava/lang/Object;
.source "MetaInfoXmlParser.java"

# interfaces
.implements Lorg/xml/sax/ContentHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/framework/util/xml/MetaInfoXmlParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MetaInfoContentHandler"
.end annotation


# instance fields
.field actions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field buff:Ljava/lang/StringBuilder;

.field desc:Lcom/alipay/mobile/framework/MicroDescription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alipay/mobile/framework/MicroDescription<",
            "*>;"
        }
    .end annotation
.end field

.field list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alipay/mobile/framework/MicroDescription<",
            "*>;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/alipay/mobile/framework/util/xml/MetaInfoXmlParser;


# direct methods
.method private constructor <init>(Lcom/alipay/mobile/framework/util/xml/MetaInfoXmlParser;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/alipay/mobile/framework/util/xml/MetaInfoXmlParser$MetaInfoContentHandler;->this$0:Lcom/alipay/mobile/framework/util/xml/MetaInfoXmlParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/framework/util/xml/MetaInfoXmlParser;Lcom/alipay/mobile/framework/util/xml/MetaInfoXmlParser$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/alipay/mobile/framework/util/xml/MetaInfoXmlParser;
    .param p2, "x1"    # Lcom/alipay/mobile/framework/util/xml/MetaInfoXmlParser$1;

    .line 116
    invoke-direct {p0, p1}, Lcom/alipay/mobile/framework/util/xml/MetaInfoXmlParser$MetaInfoContentHandler;-><init>(Lcom/alipay/mobile/framework/util/xml/MetaInfoXmlParser;)V

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 3
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I

    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "characters:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MetaInfoXmlReader"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    iget-object v0, p0, Lcom/alipay/mobile/framework/util/xml/MetaInfoXmlParser$MetaInfoContentHandler;->buff:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 219
    iget-object v0, p0, Lcom/alipay/mobile/framework/util/xml/MetaInfoXmlParser$MetaInfoContentHandler;->buff:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 220
    .local v0, "string":Ljava/lang/String;
    iget-object v1, p0, Lcom/alipay/mobile/framework/util/xml/MetaInfoXmlParser$MetaInfoContentHandler;->this$0:Lcom/alipay/mobile/framework/util/xml/MetaInfoXmlParser;

    # getter for: Lcom/alipay/mobile/framework/util/xml/MetaInfoXmlParser;->a:I
    invoke-static {v1}, Lcom/alipay/mobile/framework/util/xml/MetaInfoXmlParser;->access$200(Lcom/alipay/mobile/framework/util/xml/MetaInfoXmlParser;)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_5

    const/16 v2, 0x1f

    if-eq v1, v2, :cond_4

    const/16 v2, 0xb

    if-eq v1, v2, :cond_3

    const/16 v2, 0xc

    if-eq v1, v2, :cond_2

    const/16 v2, 0x15

    if-eq v1, v2, :cond_1

    const/16 v2, 0x16

    if-eq v1, v2, :cond_0

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 246
    :pswitch_0
    iget-object v1, p0, Lcom/alipay/mobile/framework/util/xml/MetaInfoXmlParser$MetaInfoContentHandler;->desc:Lcom/alipay/mobile/framework/MicroDescription;

    check-cast v1, Lcom/alipay/mobile/framework/pipeline/ValveDescription;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/framework/pipeline/ValveDescription;->setWeight(I)Lcom/alipay/mobile/framework/pipeline/ValveDescription;

    .line 251
    :goto_0
    return-void

    .line 243
    :pswitch_1
    iget-object v1, p0, Lcom/alipay/mobile/framework/util/xml/MetaInfoXmlParser$MetaInfoContentHandler;->desc:Lcom/alipay/mobile/framework/MicroDescription;

    check-cast v1, Lcom/alipay/mobile/framework/pipeline/ValveDescription;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/framework/pipeline/ValveDescription;->setThreadName(Ljava/lang/String;)Lcom/alipay/mobile/framework/pipeline/ValveDescription;

    .line 244
    return-void

    .line 240
    :pswitch_2
    iget-object v1, p0, Lcom/alipay/mobile/framework/util/xml/MetaInfoXmlParser$MetaInfoContentHandler;->desc:Lcom/alipay/mobile/framework/MicroDescription;

    check-cast v1, Lcom/alipay/mobile/framework/pipeline/ValveDescription;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/framework/pipeline/ValveDescription;->setPipelineName(Ljava/lang/String;)Lcom/alipay/mobile/framework/pipeline/ValveDescription;

    .line 241
    return-void

    .line 234
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/framework/util/xml/MetaInfoXmlParser$MetaInfoContentHandler;->desc:Lcom/alipay/mobile/framework/MicroDescription;

    check-cast v1, Lcom/alipay/mobile/framework/service/ServiceDescription;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/framework/service/ServiceDescription;->setLazy(Z)Lcom/alipay/mobile/framework/service/ServiceDescription;

    .line 235
    return-void

    .line 231
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/framework/util/xml/MetaInfoXmlParser$MetaInfoContentHandler;->desc:Lcom/alipay/mobile/framework/MicroDescription;

    check-cast v1, Lcom/alipay/mobile/framework/service/ServiceDescription;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/framework/service/ServiceDescription;->setInterfaceClass(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ServiceDescription;

    .line 232
    return-void

    .line 228
    :cond_2
    iget-object v1, p0, Lcom/alipay/mobile/framework/util/xml/MetaInfoXmlParser$MetaInfoContentHandler;->desc:Lcom/alipay/mobile/framework/MicroDescription;

    check-cast v1, Lcom/alipay/mobile/framework/app/ApplicationDescription;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/framework/app/ApplicationDescription;->setEngineType(Ljava/lang/String;)Lcom/alipay/mobile/framework/app/ApplicationDescription;

    .line 229
    return-void

    .line 225
    :cond_3
    iget-object v1, p0, Lcom/alipay/mobile/framework/util/xml/MetaInfoXmlParser$MetaInfoContentHandler;->desc:Lcom/alipay/mobile/framework/MicroDescription;

    check-cast v1, Lcom/alipay/mobile/framework/app/ApplicationDescription;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/framework/app/ApplicationDescription;->setAppId(Ljava/lang/String;)Lcom/alipay/mobile/framework/app/ApplicationDescription;

    .line 226
    return-void

    .line 237
    :cond_4
    iget-object v1, p0, Lcom/alipay/mobile/framework/util/xml/MetaInfoXmlParser$MetaInfoContentHandler;->actions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 238
    return-void

    .line 222
    :cond_5
    iget-object v1, p0, Lcom/alipay/mobile/framework/util/xml/MetaInfoXmlParser$MetaInfoContentHandler;->desc:Lcom/alipay/mobile/framework/MicroDescription;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/framework/MicroDescription;->setClassName(Ljava/lang/String;)Lcom/alipay/mobile/framework/MicroDescription;

    .line 223
    return-void

    :pswitch_data_0
    .packed-switch 0x29
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public endDocument()V
    .locals 2

    .line 142
    const-string v0, "MetaInfoXmlReader"

    const-string v1, "endDocument"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;

    .line 201
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v2, 0x1

    aput-object p2, v0, v2

    const/4 v2, 0x2

    aput-object p3, v0, v2

    const-string v2, "endElement(uri=%s, localName=%s, qName=%s)"

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "MetaInfoXmlReader"

    invoke-static {v2, v0}, Lcom/alipay/mobile/quinox/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    const-string v0, "broadcastReceiver"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/alipay/mobile/framework/util/xml/MetaInfoXmlParser$MetaInfoContentHandler;->desc:Lcom/alipay/mobile/framework/MicroDescription;

    check-cast v0, Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;

    iget-object v2, p0, Lcom/alipay/mobile/framework/util/xml/MetaInfoXmlParser$MetaInfoContentHandler;->actions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;->setMsgCode([Ljava/lang/String;)Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/framework/util/xml/MetaInfoXmlParser$MetaInfoContentHandler;->this$0:Lcom/alipay/mobile/framework/util/xml/MetaInfoXmlParser;

    const/4 v2, -0x1

    # setter for: Lcom/alipay/mobile/framework/util/xml/MetaInfoXmlParser;->a:I
    invoke-static {v0, v2}, Lcom/alipay/mobile/framework/util/xml/MetaInfoXmlParser;->access$202(Lcom/alipay/mobile/framework/util/xml/MetaInfoXmlParser;I)I

    .line 208
    iget-object v0, p0, Lcom/alipay/mobile/framework/util/xml/MetaInfoXmlParser$MetaInfoContentHandler;->buff:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 209
    iget-object v0, p0, Lcom/alipay/mobile/framework/util/xml/MetaInfoXmlParser$MetaInfoContentHandler;->buff:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 211
    :cond_1
    return-void
.end method

.method public endPrefixMapping(Ljava/lang/String;)V
    .locals 2
    .param p1, "prefix"    # Ljava/lang/String;

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "endPrefixMapping:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MetaInfoXmlReader"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    return-void
.end method

.method public getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/framework/MicroDescription<",
            "*>;>;"
        }
    .end annotation

    .line 127
    iget-object v0, p0, Lcom/alipay/mobile/framework/util/xml/MetaInfoXmlParser$MetaInfoContentHandler;->list:Ljava/util/List;

    return-object v0
.end method

.method public ignorableWhitespace([CII)V
    .locals 2
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I

    .line 255
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ignorableWhitespace:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MetaInfoXmlReader"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    return-void
.end method

.method public processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "processingInstruction:target="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MetaInfoXmlReader"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    return-void
.end method

.method public setDocumentLocator(Lorg/xml/sax/Locator;)V
    .locals 2
    .param p1, "locator"    # Lorg/xml/sax/Locator;

    .line 132
    const-string v0, "MetaInfoXmlReader"

    const-string/jumbo v1, "setDocumentLocator"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    return-void
.end method

.method public skippedEntity(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 266
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "skippedEntity:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MetaInfoXmlReader"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    return-void
.end method

.method public startDocument()V
    .locals 2

    .line 137
    const-string v0, "MetaInfoXmlReader"

    const-string/jumbo v1, "startDocument"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 3
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .param p4, "atts"    # Lorg/xml/sax/Attributes;

    .line 157
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v2, 0x2

    aput-object p3, v0, v2

    const/4 v2, 0x3

    aput-object p4, v0, v2

    const-string/jumbo v2, "startElement(uri=%s, localName=%s, qName=%s, atts=%s)"

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "MetaInfoXmlReader"

    invoke-static {v2, v0}, Lcom/alipay/mobile/quinox/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    const-string/jumbo v0, "metainfo"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/framework/util/xml/MetaInfoXmlParser$MetaInfoContentHandler;->list:Ljava/util/List;

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/framework/util/xml/MetaInfoXmlParser$MetaInfoContentHandler;->buff:Ljava/lang/StringBuilder;

    return-void

    .line 161
    :cond_0
    const-string v0, "className"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 162
    iget-object v0, p0, Lcom/alipay/mobile/framework/util/xml/MetaInfoXmlParser$MetaInfoContentHandler;->this$0:Lcom/alipay/mobile/framework/util/xml/MetaInfoXmlParser;

    # setter for: Lcom/alipay/mobile/framework/util/xml/MetaInfoXmlParser;->a:I
    invoke-static {v0, v1}, Lcom/alipay/mobile/framework/util/xml/MetaInfoXmlParser;->access$202(Lcom/alipay/mobile/framework/util/xml/MetaInfoXmlParser;I)I

    return-void

    .line 163
    :cond_1
    const-string v0, "application"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 164
    new-instance v0, Lcom/alipay/mobile/framework/app/ApplicationDescription;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/app/ApplicationDescription;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/framework/util/xml/MetaInfoXmlParser$MetaInfoContentHandler;->desc:Lcom/alipay/mobile/framework/MicroDescription;

    .line 165
    iget-object v1, p0, Lcom/alipay/mobile/framework/util/xml/MetaInfoXmlParser$MetaInfoContentHandler;->list:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 166
    :cond_2
    const-string v0, "appId"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 167
    iget-object v0, p0, Lcom/alipay/mobile/framework/util/xml/MetaInfoXmlParser$MetaInfoContentHandler;->this$0:Lcom/alipay/mobile/framework/util/xml/MetaInfoXmlParser;

    const/16 v1, 0xb

    # setter for: Lcom/alipay/mobile/framework/util/xml/MetaInfoXmlParser;->a:I
    invoke-static {v0, v1}, Lcom/alipay/mobile/framework/util/xml/MetaInfoXmlParser;->access$202(Lcom/alipay/mobile/framework/util/xml/MetaInfoXmlParser;I)I

    return-void

    .line 168
    :cond_3
    const-string v0, "engineTyp"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 169
    iget-object v0, p0, Lcom/alipay/mobile/framework/util/xml/MetaInfoXmlParser$MetaInfoContentHandler;->this$0:Lcom/alipay/mobile/framework/util/xml/MetaInfoXmlParser;

    const/16 v1, 0xc

    # setter for: Lcom/alipay/mobile/framework/util/xml/MetaInfoXmlParser;->a:I
    invoke-static {v0, v1}, Lcom/alipay/mobile/framework/util/xml/MetaInfoXmlParser;->access$202(Lcom/alipay/mobile/framework/util/xml/MetaInfoXmlParser;I)I

    return-void

    .line 170
    :cond_4
    const-string/jumbo v0, "service"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 171
    new-instance v0, Lcom/alipay/mobile/framework/service/ServiceDescription;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/service/ServiceDescription;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/framework/util/xml/MetaInfoXmlParser$MetaInfoContentHandler;->desc:Lcom/alipay/mobile/framework/MicroDescription;

    .line 172
    iget-object v1, p0, Lcom/alipay/mobile/framework/util/xml/MetaInfoXmlParser$MetaInfoContentHandler;->list:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 173
    :cond_5
    const-string v0, "interfaceName"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 174
    iget-object v0, p0, Lcom/alipay/mobile/framework/util/xml/MetaInfoXmlParser$MetaInfoContentHandler;->this$0:Lcom/alipay/mobile/framework/util/xml/MetaInfoXmlParser;

    const/16 v1, 0x15

    # setter for: Lcom/alipay/mobile/framework/util/xml/MetaInfoXmlParser;->a:I
    invoke-static {v0, v1}, Lcom/alipay/mobile/framework/util/xml/MetaInfoXmlParser;->access$202(Lcom/alipay/mobile/framework/util/xml/MetaInfoXmlParser;I)I

    return-void

    .line 175
    :cond_6
    const-string v0, "isLazy"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 176
    iget-object v0, p0, Lcom/alipay/mobile/framework/util/xml/MetaInfoXmlParser$MetaInfoContentHandler;->this$0:Lcom/alipay/mobile/framework/util/xml/MetaInfoXmlParser;

    const/16 v1, 0x16

    # setter for: Lcom/alipay/mobile/framework/util/xml/MetaInfoXmlParser;->a:I
    invoke-static {v0, v1}, Lcom/alipay/mobile/framework/util/xml/MetaInfoXmlParser;->access$202(Lcom/alipay/mobile/framework/util/xml/MetaInfoXmlParser;I)I

    return-void

    .line 177
    :cond_7
    const-string v0, "broadcastReceiver"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 178
    new-instance v0, Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/framework/util/xml/MetaInfoXmlParser$MetaInfoContentHandler;->desc:Lcom/alipay/mobile/framework/MicroDescription;

    .line 179
    iget-object v1, p0, Lcom/alipay/mobile/framework/util/xml/MetaInfoXmlParser$MetaInfoContentHandler;->list:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    iget-object v0, p0, Lcom/alipay/mobile/framework/util/xml/MetaInfoXmlParser$MetaInfoContentHandler;->actions:Ljava/util/ArrayList;

    if-nez v0, :cond_8

    .line 181
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/framework/util/xml/MetaInfoXmlParser$MetaInfoContentHandler;->actions:Ljava/util/ArrayList;

    return-void

    .line 183
    :cond_8
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void

    .line 185
    :cond_9
    const-string v0, "action"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 186
    iget-object v0, p0, Lcom/alipay/mobile/framework/util/xml/MetaInfoXmlParser$MetaInfoContentHandler;->this$0:Lcom/alipay/mobile/framework/util/xml/MetaInfoXmlParser;

    const/16 v1, 0x1f

    # setter for: Lcom/alipay/mobile/framework/util/xml/MetaInfoXmlParser;->a:I
    invoke-static {v0, v1}, Lcom/alipay/mobile/framework/util/xml/MetaInfoXmlParser;->access$202(Lcom/alipay/mobile/framework/util/xml/MetaInfoXmlParser;I)I

    return-void

    .line 187
    :cond_a
    const-string/jumbo v0, "valve"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 188
    new-instance v0, Lcom/alipay/mobile/framework/pipeline/ValveDescription;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/pipeline/ValveDescription;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/framework/util/xml/MetaInfoXmlParser$MetaInfoContentHandler;->desc:Lcom/alipay/mobile/framework/MicroDescription;

    .line 189
    iget-object v1, p0, Lcom/alipay/mobile/framework/util/xml/MetaInfoXmlParser$MetaInfoContentHandler;->list:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 190
    :cond_b
    const-string/jumbo v0, "pipelineName"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 191
    iget-object v0, p0, Lcom/alipay/mobile/framework/util/xml/MetaInfoXmlParser$MetaInfoContentHandler;->this$0:Lcom/alipay/mobile/framework/util/xml/MetaInfoXmlParser;

    const/16 v1, 0x29

    # setter for: Lcom/alipay/mobile/framework/util/xml/MetaInfoXmlParser;->a:I
    invoke-static {v0, v1}, Lcom/alipay/mobile/framework/util/xml/MetaInfoXmlParser;->access$202(Lcom/alipay/mobile/framework/util/xml/MetaInfoXmlParser;I)I

    return-void

    .line 192
    :cond_c
    const-string/jumbo v0, "threadName"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 193
    iget-object v0, p0, Lcom/alipay/mobile/framework/util/xml/MetaInfoXmlParser$MetaInfoContentHandler;->this$0:Lcom/alipay/mobile/framework/util/xml/MetaInfoXmlParser;

    const/16 v1, 0x2a

    # setter for: Lcom/alipay/mobile/framework/util/xml/MetaInfoXmlParser;->a:I
    invoke-static {v0, v1}, Lcom/alipay/mobile/framework/util/xml/MetaInfoXmlParser;->access$202(Lcom/alipay/mobile/framework/util/xml/MetaInfoXmlParser;I)I

    return-void

    .line 194
    :cond_d
    const-string/jumbo v0, "weight"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 195
    iget-object v0, p0, Lcom/alipay/mobile/framework/util/xml/MetaInfoXmlParser$MetaInfoContentHandler;->this$0:Lcom/alipay/mobile/framework/util/xml/MetaInfoXmlParser;

    const/16 v1, 0x2b

    # setter for: Lcom/alipay/mobile/framework/util/xml/MetaInfoXmlParser;->a:I
    invoke-static {v0, v1}, Lcom/alipay/mobile/framework/util/xml/MetaInfoXmlParser;->access$202(Lcom/alipay/mobile/framework/util/xml/MetaInfoXmlParser;I)I

    .line 197
    :cond_e
    return-void
.end method

.method public startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "startPrefixMapping:prefix="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",uri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MetaInfoXmlReader"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    return-void
.end method
