.class public Lcom/seiginonakama/res/utils/ManifestMerger;
.super Ljava/lang/Object;
.source "ManifestMerger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/seiginonakama/res/utils/ManifestMerger$NodeMergePolicy;,
        Lcom/seiginonakama/res/utils/ManifestMerger$AttrKey;,
        Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeKey;,
        Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeWrapper;,
        Lcom/seiginonakama/res/utils/ManifestMerger$XmlNode;,
        Lcom/seiginonakama/res/utils/ManifestMerger$XmlTree;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$2400(Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .line 34
    invoke-static {p0}, Lcom/seiginonakama/res/utils/ManifestMerger;->strHashCode(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static flatten(Lcom/seiginonakama/res/utils/ManifestMerger$XmlTree;)Lcom/abq/qba/e/x;
    .locals 8

    .line 204
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 205
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 206
    # getter for: Lcom/seiginonakama/res/utils/ManifestMerger$XmlTree;->root:Lcom/seiginonakama/res/utils/ManifestMerger$XmlNode;
    invoke-static {p0}, Lcom/seiginonakama/res/utils/ManifestMerger$XmlTree;->access$800(Lcom/seiginonakama/res/utils/ManifestMerger$XmlTree;)Lcom/seiginonakama/res/utils/ManifestMerger$XmlNode;

    move-result-object v2

    # invokes: Lcom/seiginonakama/res/utils/ManifestMerger$XmlNode;->collectResIdStrings(Ljava/util/List;Ljava/util/List;)V
    invoke-static {v2, v0, v1}, Lcom/seiginonakama/res/utils/ManifestMerger$XmlNode;->access$900(Lcom/seiginonakama/res/utils/ManifestMerger$XmlNode;Ljava/util/List;Ljava/util/List;)V

    .line 209
    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    .line 210
    # getter for: Lcom/seiginonakama/res/utils/ManifestMerger$XmlTree;->startNameSpaces:Ljava/util/LinkedHashMap;
    invoke-static {p0}, Lcom/seiginonakama/res/utils/ManifestMerger$XmlTree;->access$100(Lcom/seiginonakama/res/utils/ManifestMerger$XmlTree;)Ljava/util/LinkedHashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/abq/qba/e/z;

    .line 211
    invoke-virtual {v4}, Lcom/abq/qba/e/z;->f()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 212
    invoke-virtual {v4}, Lcom/abq/qba/e/z;->g()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 214
    # getter for: Lcom/seiginonakama/res/utils/ManifestMerger$XmlTree;->endNameSpaces:Ljava/util/LinkedHashMap;
    invoke-static {p0}, Lcom/seiginonakama/res/utils/ManifestMerger$XmlTree;->access$200(Lcom/seiginonakama/res/utils/ManifestMerger$XmlTree;)Ljava/util/LinkedHashMap;

    move-result-object v5

    invoke-virtual {v4}, Lcom/abq/qba/e/z;->f()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/abq/qba/e/z;

    .line 216
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v2}, Ljava/util/LinkedHashSet;->size()I

    move-result v7

    add-int/2addr v6, v7

    add-int/lit8 v6, v6, -0x2

    .line 217
    invoke-virtual {v4, v6}, Lcom/abq/qba/e/z;->b(I)V

    .line 218
    invoke-virtual {v5, v6}, Lcom/abq/qba/e/z;->b(I)V

    .line 220
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v2}, Ljava/util/LinkedHashSet;->size()I

    move-result v7

    add-int/2addr v6, v7

    add-int/lit8 v6, v6, -0x1

    .line 221
    invoke-virtual {v4, v6}, Lcom/abq/qba/e/z;->c(I)V

    .line 222
    invoke-virtual {v5, v6}, Lcom/abq/qba/e/z;->c(I)V

    .line 223
    goto :goto_0

    .line 224
    :cond_0
    # getter for: Lcom/seiginonakama/res/utils/ManifestMerger$XmlTree;->root:Lcom/seiginonakama/res/utils/ManifestMerger$XmlNode;
    invoke-static {p0}, Lcom/seiginonakama/res/utils/ManifestMerger$XmlTree;->access$800(Lcom/seiginonakama/res/utils/ManifestMerger$XmlTree;)Lcom/seiginonakama/res/utils/ManifestMerger$XmlNode;

    move-result-object v3

    # invokes: Lcom/seiginonakama/res/utils/ManifestMerger$XmlNode;->collectOtherStrings(Ljava/util/LinkedHashSet;)V
    invoke-static {v3, v2}, Lcom/seiginonakama/res/utils/ManifestMerger$XmlNode;->access$1000(Lcom/seiginonakama/res/utils/ManifestMerger$XmlNode;Ljava/util/LinkedHashSet;)V

    .line 226
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/LinkedHashSet;->remove(Ljava/lang/Object;)Z

    .line 229
    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 230
    # getter for: Lcom/seiginonakama/res/utils/ManifestMerger$XmlTree;->stringPoolChunk:Lcom/abq/qba/e/o;
    invoke-static {p0}, Lcom/seiginonakama/res/utils/ManifestMerger$XmlTree;->access$1100(Lcom/seiginonakama/res/utils/ManifestMerger$XmlTree;)Lcom/abq/qba/e/o;

    move-result-object v2

    .line 231
    iget-object v3, v2, Lcom/abq/qba/e/o;->e:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 232
    iget-object v3, v2, Lcom/abq/qba/e/o;->e:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 233
    iget-object v0, v2, Lcom/abq/qba/e/o;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 236
    # getter for: Lcom/seiginonakama/res/utils/ManifestMerger$XmlTree;->resourceMapChunk:Lcom/abq/qba/e/ad;
    invoke-static {p0}, Lcom/seiginonakama/res/utils/ManifestMerger$XmlTree;->access$1200(Lcom/seiginonakama/res/utils/ManifestMerger$XmlTree;)Lcom/abq/qba/e/ad;

    move-result-object v0

    .line 237
    iget-object v3, v0, Lcom/abq/qba/e/ad;->e:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 238
    iget-object v3, v0, Lcom/abq/qba/e/ad;->e:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 241
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 242
    # getter for: Lcom/seiginonakama/res/utils/ManifestMerger$XmlTree;->root:Lcom/seiginonakama/res/utils/ManifestMerger$XmlNode;
    invoke-static {p0}, Lcom/seiginonakama/res/utils/ManifestMerger$XmlTree;->access$800(Lcom/seiginonakama/res/utils/ManifestMerger$XmlTree;)Lcom/seiginonakama/res/utils/ManifestMerger$XmlNode;

    move-result-object v4

    # invokes: Lcom/seiginonakama/res/utils/ManifestMerger$XmlNode;->collectNodeChunk(Ljava/util/List;)V
    invoke-static {v4, v3}, Lcom/seiginonakama/res/utils/ManifestMerger$XmlNode;->access$1300(Lcom/seiginonakama/res/utils/ManifestMerger$XmlNode;Ljava/util/List;)V

    .line 245
    const/16 v4, 0x8

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    sget-object v6, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 246
    const-wide/16 v6, 0x3

    invoke-static {v6, v7}, Lcom/abq/qba/d/b;->a(J)S

    move-result v6

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 247
    invoke-virtual {v5, v4}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 248
    invoke-virtual {v5, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 249
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 250
    invoke-static {v5}, Lcom/abq/qba/e/a;->c(Ljava/nio/ByteBuffer;)Lcom/abq/qba/e/a;

    move-result-object v4

    check-cast v4, Lcom/abq/qba/e/x;

    .line 253
    # getter for: Lcom/seiginonakama/res/utils/ManifestMerger$XmlTree;->root:Lcom/seiginonakama/res/utils/ManifestMerger$XmlNode;
    invoke-static {p0}, Lcom/seiginonakama/res/utils/ManifestMerger$XmlTree;->access$800(Lcom/seiginonakama/res/utils/ManifestMerger$XmlTree;)Lcom/seiginonakama/res/utils/ManifestMerger$XmlNode;

    move-result-object v5

    # invokes: Lcom/seiginonakama/res/utils/ManifestMerger$XmlNode;->adjustStringIndex(Lcom/abq/qba/e/a;Lcom/abq/qba/e/o;Ljava/util/List;)V
    invoke-static {v5, v4, v2, v1}, Lcom/seiginonakama/res/utils/ManifestMerger$XmlNode;->access$1400(Lcom/seiginonakama/res/utils/ManifestMerger$XmlNode;Lcom/abq/qba/e/a;Lcom/abq/qba/e/o;Ljava/util/List;)V

    .line 256
    invoke-virtual {v4, v2}, Lcom/abq/qba/e/x;->b(Lcom/abq/qba/e/a;)V

    .line 257
    invoke-virtual {v4, v0}, Lcom/abq/qba/e/x;->b(Lcom/abq/qba/e/a;)V

    .line 260
    # getter for: Lcom/seiginonakama/res/utils/ManifestMerger$XmlTree;->startNameSpaces:Ljava/util/LinkedHashMap;
    invoke-static {p0}, Lcom/seiginonakama/res/utils/ManifestMerger$XmlTree;->access$100(Lcom/seiginonakama/res/utils/ManifestMerger$XmlTree;)Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/abq/qba/e/z;

    .line 261
    invoke-virtual {v1, v4}, Lcom/abq/qba/e/z;->a(Lcom/abq/qba/e/a;)V

    .line 262
    invoke-virtual {v4, v1}, Lcom/abq/qba/e/x;->b(Lcom/abq/qba/e/a;)V

    .line 263
    goto :goto_1

    .line 266
    :cond_1
    const/4 v0, 0x0

    .line 267
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/abq/qba/e/ac;

    .line 268
    instance-of v3, v2, Lcom/abq/qba/e/ae;

    if-eqz v3, :cond_2

    .line 269
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 271
    :cond_2
    add-int/lit8 v0, v0, -0x1

    .line 273
    :goto_3
    if-ltz v0, :cond_3

    .line 276
    invoke-virtual {v4, v2}, Lcom/abq/qba/e/x;->b(Lcom/abq/qba/e/a;)V

    .line 277
    goto :goto_2

    .line 274
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "XmlNode depth incorrect! "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 280
    :cond_4
    # getter for: Lcom/seiginonakama/res/utils/ManifestMerger$XmlTree;->endNameSpaces:Ljava/util/LinkedHashMap;
    invoke-static {p0}, Lcom/seiginonakama/res/utils/ManifestMerger$XmlTree;->access$200(Lcom/seiginonakama/res/utils/ManifestMerger$XmlTree;)Ljava/util/LinkedHashMap;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/abq/qba/e/z;

    .line 281
    invoke-virtual {v0, v4}, Lcom/abq/qba/e/z;->a(Lcom/abq/qba/e/a;)V

    .line 282
    invoke-virtual {v4, v0}, Lcom/abq/qba/e/x;->b(Lcom/abq/qba/e/a;)V

    .line 283
    goto :goto_4

    .line 285
    :cond_5
    return-object v4
.end method

.method private static mergeApplicationNode(Lcom/seiginonakama/res/utils/ManifestMerger$XmlNode;Lcom/seiginonakama/res/utils/ManifestMerger$XmlNode;)V
    .locals 9
    .param p0, "mergeTo"    # Lcom/seiginonakama/res/utils/ManifestMerger$XmlNode;
    .param p1, "mergeFrom"    # Lcom/seiginonakama/res/utils/ManifestMerger$XmlNode;

    .line 114
    # getter for: Lcom/seiginonakama/res/utils/ManifestMerger$XmlNode;->children:Ljava/util/LinkedHashMap;
    invoke-static {p0}, Lcom/seiginonakama/res/utils/ManifestMerger$XmlNode;->access$300(Lcom/seiginonakama/res/utils/ManifestMerger$XmlNode;)Ljava/util/LinkedHashMap;

    move-result-object v0

    .line 115
    .local v0, "mergeToAppChildren":Ljava/util/LinkedHashMap;
    # getter for: Lcom/seiginonakama/res/utils/ManifestMerger$XmlNode;->children:Ljava/util/LinkedHashMap;
    invoke-static {p1}, Lcom/seiginonakama/res/utils/ManifestMerger$XmlNode;->access$300(Lcom/seiginonakama/res/utils/ManifestMerger$XmlNode;)Ljava/util/LinkedHashMap;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    .line 116
    .local v3, "mergeFromAppChildren":Ljava/util/LinkedHashMap;
    move-object v3, v1

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 117
    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 118
    .local v4, "key":Ljava/lang/String;
    invoke-virtual {v0, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 119
    .local v2, "mergeToAppNodes":Ljava/util/List;
    if-nez v5, :cond_0

    .line 120
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v5

    .line 121
    invoke-virtual {v0, v4, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    :cond_0
    const/4 v5, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    :cond_1
    goto :goto_1

    :sswitch_0
    const-string v6, "service"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v5, 0x2

    goto :goto_1

    :sswitch_1
    const-string v6, "activity-alias"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :sswitch_2
    const-string v6, "receiver"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v5, 0x3

    goto :goto_1

    :sswitch_3
    const-string v6, "provider"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v5, 0x4

    goto :goto_1

    :sswitch_4
    const-string v6, "meta-data"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v5, 0x6

    goto :goto_1

    :sswitch_5
    const-string v6, "uses-library"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v5, 0x5

    goto :goto_1

    :sswitch_6
    const-string v6, "activity"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v5, 0x0

    :goto_1
    const-string v6, "name"

    packed-switch v5, :pswitch_data_0

    .line 136
    sget-object v5, Lcom/seiginonakama/res/utils/ManifestMerger$NodeMergePolicy;->KEEP_MERGE_TO_WHEN_DUPLICATE:Lcom/seiginonakama/res/utils/ManifestMerger$NodeMergePolicy;

    .line 137
    invoke-virtual {v0, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 138
    invoke-virtual {v3, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 137
    invoke-virtual {v5, v7, v8, v6}, Lcom/seiginonakama/res/utils/ManifestMerger$NodeMergePolicy;->merge(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 136
    invoke-virtual {v0, v4, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    .end local v2    # "mergeToAppNodes":Ljava/util/List;
    .end local v4    # "key":Ljava/lang/String;
    goto/16 :goto_0

    .line 131
    .restart local v2    # "mergeToAppNodes":Ljava/util/List;
    .restart local v4    # "key":Ljava/lang/String;
    :pswitch_0
    sget-object v5, Lcom/seiginonakama/res/utils/ManifestMerger$NodeMergePolicy;->KEEP_MERGE_TO_WHEN_DUPLICATE:Lcom/seiginonakama/res/utils/ManifestMerger$NodeMergePolicy;

    .line 132
    invoke-virtual {v0, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 133
    invoke-virtual {v3, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 132
    invoke-virtual {v5, v7, v8, v6}, Lcom/seiginonakama/res/utils/ManifestMerger$NodeMergePolicy;->merge(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 131
    invoke-virtual {v0, v4, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    goto/16 :goto_0

    .line 143
    .end local v2    # "mergeToAppNodes":Ljava/util/List;
    .end local v4    # "key":Ljava/lang/String;
    :cond_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x62b40cf1 -> :sswitch_6
        -0x50de9846 -> :sswitch_5
        -0x4284098e -> :sswitch_4
        -0x3adbfa0f -> :sswitch_3
        -0x30341611 -> :sswitch_2
        0x2f1ad612 -> :sswitch_1
        0x7643c6b5 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static mergeManifest(Lcom/abq/qba/e/x;Lcom/abq/qba/e/x;)Lcom/abq/qba/e/x;
    .locals 4
    .param p0, "mergeTo"    # Lcom/abq/qba/e/x;
    .param p1, "mergeFrom"    # Lcom/abq/qba/e/x;

    .line 36
    invoke-static {p0}, Lcom/seiginonakama/res/utils/ManifestMerger;->parseXmlTree(Lcom/abq/qba/e/x;)Lcom/seiginonakama/res/utils/ManifestMerger$XmlTree;

    move-result-object v0

    .line 37
    .local v0, "mergeToTree":Lcom/seiginonakama/res/utils/ManifestMerger$XmlTree;
    invoke-static {p1}, Lcom/seiginonakama/res/utils/ManifestMerger;->parseXmlTree(Lcom/abq/qba/e/x;)Lcom/seiginonakama/res/utils/ManifestMerger$XmlTree;

    move-result-object v1

    .line 38
    .local v1, "mergeFromTree":Lcom/seiginonakama/res/utils/ManifestMerger$XmlTree;
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 41
    .local v2, "attrResIdMap":Ljava/util/Map;
    # invokes: Lcom/seiginonakama/res/utils/ManifestMerger$XmlTree;->collectResIds(Ljava/util/Map;)V
    invoke-static {v0, v2}, Lcom/seiginonakama/res/utils/ManifestMerger$XmlTree;->access$000(Lcom/seiginonakama/res/utils/ManifestMerger$XmlTree;Ljava/util/Map;)V

    .line 42
    # invokes: Lcom/seiginonakama/res/utils/ManifestMerger$XmlTree;->collectResIds(Ljava/util/Map;)V
    invoke-static {v1, v2}, Lcom/seiginonakama/res/utils/ManifestMerger$XmlTree;->access$000(Lcom/seiginonakama/res/utils/ManifestMerger$XmlTree;Ljava/util/Map;)V

    .line 45
    invoke-static {v0, v1}, Lcom/seiginonakama/res/utils/ManifestMerger;->mergeXmlTree(Lcom/seiginonakama/res/utils/ManifestMerger$XmlTree;Lcom/seiginonakama/res/utils/ManifestMerger$XmlTree;)V

    .line 48
    invoke-static {v0}, Lcom/seiginonakama/res/utils/ManifestMerger;->flatten(Lcom/seiginonakama/res/utils/ManifestMerger$XmlTree;)Lcom/abq/qba/e/x;

    move-result-object v3

    return-object v3
.end method

.method private static mergeNamespaces(Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap;)V
    .locals 6
    .param p0, "mergeTo"    # Ljava/util/LinkedHashMap;
    .param p1, "mergeFrom"    # Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/abq/qba/e/z;",
            ">;",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/abq/qba/e/z;",
            ">;)V"
        }
    .end annotation

    .line 100
    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 101
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p0, v1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 102
    invoke-virtual {p0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/abq/qba/e/z;

    .line 103
    .local v2, "origin":Lcom/abq/qba/e/z;
    invoke-virtual {p1, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/abq/qba/e/z;

    .line 104
    .local v3, "from":Lcom/abq/qba/e/z;
    invoke-virtual {v2}, Lcom/abq/qba/e/z;->g()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/abq/qba/e/z;->g()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 107
    .end local v2    # "origin":Lcom/abq/qba/e/z;
    .end local v3    # "from":Lcom/abq/qba/e/z;
    goto :goto_0

    .line 105
    .restart local v2    # "origin":Lcom/abq/qba/e/z;
    .restart local v3    # "from":Lcom/abq/qba/e/z;
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " conflict with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 108
    .end local v2    # "origin":Lcom/abq/qba/e/z;
    .end local v3    # "from":Lcom/abq/qba/e/z;
    :cond_1
    invoke-virtual {p1, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    .end local v1    # "key":Ljava/lang/String;
    goto :goto_0

    .line 111
    :cond_2
    return-void
.end method

.method private static mergeXmlTree(Lcom/seiginonakama/res/utils/ManifestMerger$XmlTree;Lcom/seiginonakama/res/utils/ManifestMerger$XmlTree;)V
    .locals 14
    .param p0, "mergeToTree"    # Lcom/seiginonakama/res/utils/ManifestMerger$XmlTree;
    .param p1, "mergeFromTree"    # Lcom/seiginonakama/res/utils/ManifestMerger$XmlTree;

    .line 53
    # getter for: Lcom/seiginonakama/res/utils/ManifestMerger$XmlTree;->startNameSpaces:Ljava/util/LinkedHashMap;
    invoke-static {p0}, Lcom/seiginonakama/res/utils/ManifestMerger$XmlTree;->access$100(Lcom/seiginonakama/res/utils/ManifestMerger$XmlTree;)Ljava/util/LinkedHashMap;

    move-result-object v0

    # getter for: Lcom/seiginonakama/res/utils/ManifestMerger$XmlTree;->startNameSpaces:Ljava/util/LinkedHashMap;
    invoke-static {p1}, Lcom/seiginonakama/res/utils/ManifestMerger$XmlTree;->access$100(Lcom/seiginonakama/res/utils/ManifestMerger$XmlTree;)Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/seiginonakama/res/utils/ManifestMerger;->mergeNamespaces(Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap;)V

    .line 54
    # getter for: Lcom/seiginonakama/res/utils/ManifestMerger$XmlTree;->endNameSpaces:Ljava/util/LinkedHashMap;
    invoke-static {p0}, Lcom/seiginonakama/res/utils/ManifestMerger$XmlTree;->access$200(Lcom/seiginonakama/res/utils/ManifestMerger$XmlTree;)Ljava/util/LinkedHashMap;

    move-result-object v0

    # getter for: Lcom/seiginonakama/res/utils/ManifestMerger$XmlTree;->endNameSpaces:Ljava/util/LinkedHashMap;
    invoke-static {p1}, Lcom/seiginonakama/res/utils/ManifestMerger$XmlTree;->access$200(Lcom/seiginonakama/res/utils/ManifestMerger$XmlTree;)Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/seiginonakama/res/utils/ManifestMerger;->mergeNamespaces(Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap;)V

    .line 55
    # getter for: Lcom/seiginonakama/res/utils/ManifestMerger$XmlTree;->startNameSpaces:Ljava/util/LinkedHashMap;
    invoke-static {p0}, Lcom/seiginonakama/res/utils/ManifestMerger$XmlTree;->access$100(Lcom/seiginonakama/res/utils/ManifestMerger$XmlTree;)Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    # getter for: Lcom/seiginonakama/res/utils/ManifestMerger$XmlTree;->endNameSpaces:Ljava/util/LinkedHashMap;
    invoke-static {p0}, Lcom/seiginonakama/res/utils/ManifestMerger$XmlTree;->access$200(Lcom/seiginonakama/res/utils/ManifestMerger$XmlTree;)Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    if-ne v0, v1, :cond_6

    .line 60
    invoke-virtual {p0}, Lcom/seiginonakama/res/utils/ManifestMerger$XmlTree;->getRootChildren()Ljava/util/LinkedHashMap;

    move-result-object v0

    .line 61
    .local v0, "mergeToRootChildren":Ljava/util/LinkedHashMap;
    invoke-virtual {p1}, Lcom/seiginonakama/res/utils/ManifestMerger$XmlTree;->getRootChildren()Ljava/util/LinkedHashMap;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    .line 62
    .local v3, "mergeFromRootChildren":Ljava/util/LinkedHashMap;
    move-object v3, v1

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 63
    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object v4, v2

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 64
    .local v5, "key":Ljava/lang/String;
    invoke-virtual {v0, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 65
    .local v4, "mergeToRootNodes":Ljava/util/List;
    if-nez v6, :cond_0

    .line 66
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v6

    .line 67
    invoke-virtual {v0, v5, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    :cond_0
    const/4 v6, -0x1

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v7

    const/4 v8, 0x5

    const/4 v9, 0x4

    const/4 v10, 0x3

    const/4 v11, 0x2

    const/4 v12, 0x1

    const/4 v13, 0x0

    sparse-switch v7, :sswitch_data_0

    :cond_1
    goto :goto_1

    :sswitch_0
    const-string v7, "compatible-screens"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v6, 0x4

    goto :goto_1

    :sswitch_1
    const-string v7, "application"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v6, 0x5

    goto :goto_1

    :sswitch_2
    const-string v7, "supports-screens"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v6, 0x3

    goto :goto_1

    :sswitch_3
    const-string v7, "instrumentation"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v6, 0x0

    goto :goto_1

    :sswitch_4
    const-string v7, "uses-sdk"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v6, 0x1

    goto :goto_1

    :sswitch_5
    const-string v7, "uses-configuration"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v6, 0x2

    :goto_1
    const-string v7, "name"

    if-eqz v6, :cond_4

    if-eq v6, v12, :cond_3

    if-eq v6, v11, :cond_3

    if-eq v6, v10, :cond_3

    if-eq v6, v9, :cond_3

    if-eq v6, v8, :cond_2

    .line 90
    sget-object v6, Lcom/seiginonakama/res/utils/ManifestMerger$NodeMergePolicy;->KEEP_MERGE_TO_WHEN_DUPLICATE:Lcom/seiginonakama/res/utils/ManifestMerger$NodeMergePolicy;

    .line 91
    invoke-virtual {v0, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 92
    invoke-virtual {v3, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 91
    invoke-virtual {v6, v8, v9, v7}, Lcom/seiginonakama/res/utils/ManifestMerger$NodeMergePolicy;->merge(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 90
    invoke-virtual {v0, v5, v6}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    .end local v4    # "mergeToRootNodes":Ljava/util/List;
    .end local v5    # "key":Ljava/lang/String;
    goto/16 :goto_0

    .line 86
    .restart local v4    # "mergeToRootNodes":Ljava/util/List;
    .restart local v5    # "key":Ljava/lang/String;
    :cond_2
    invoke-virtual {v0, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-interface {v6, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/seiginonakama/res/utils/ManifestMerger$XmlNode;

    .line 87
    invoke-virtual {v3, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-interface {v7, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/seiginonakama/res/utils/ManifestMerger$XmlNode;

    .line 86
    invoke-static {v6, v7}, Lcom/seiginonakama/res/utils/ManifestMerger;->mergeApplicationNode(Lcom/seiginonakama/res/utils/ManifestMerger$XmlNode;Lcom/seiginonakama/res/utils/ManifestMerger$XmlNode;)V

    .line 88
    goto/16 :goto_0

    .line 81
    :cond_3
    sget-object v6, Lcom/seiginonakama/res/utils/ManifestMerger$NodeMergePolicy;->KEEP_MERGE_TO:Lcom/seiginonakama/res/utils/ManifestMerger$NodeMergePolicy;

    .line 82
    invoke-virtual {v0, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 83
    invoke-virtual {v3, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 82
    invoke-virtual {v6, v7, v8, v2}, Lcom/seiginonakama/res/utils/ManifestMerger$NodeMergePolicy;->merge(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 81
    invoke-virtual {v0, v5, v6}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    goto/16 :goto_0

    .line 71
    :cond_4
    sget-object v6, Lcom/seiginonakama/res/utils/ManifestMerger$NodeMergePolicy;->CANNOT_DUPLICATE:Lcom/seiginonakama/res/utils/ManifestMerger$NodeMergePolicy;

    .line 72
    invoke-virtual {v0, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 73
    invoke-virtual {v3, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 72
    invoke-virtual {v6, v8, v9, v7}, Lcom/seiginonakama/res/utils/ManifestMerger$NodeMergePolicy;->merge(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 71
    invoke-virtual {v0, v5, v6}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    goto/16 :goto_0

    .line 97
    .end local v4    # "mergeToRootNodes":Ljava/util/List;
    .end local v5    # "key":Ljava/lang/String;
    :cond_5
    return-void

    .line 56
    .end local v0    # "mergeToRootChildren":Ljava/util/LinkedHashMap;
    .end local v3    # "mergeFromRootChildren":Ljava/util/LinkedHashMap;
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "start namespaces and end namespaces size mismatch"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_data_0
    .sparse-switch
        -0x69b7c34b -> :sswitch_5
        -0xfe5a947 -> :sswitch_4
        0x20752f6e -> :sswitch_3
        0x3573e73e -> :sswitch_2
        0x5ca40550 -> :sswitch_1
        0x6c5ff78e -> :sswitch_0
    .end sparse-switch
.end method

.method private static parseXmlTree(Lcom/abq/qba/e/x;)Lcom/seiginonakama/res/utils/ManifestMerger$XmlTree;
    .locals 16
    .param p0, "xmlChunk"    # Lcom/abq/qba/e/x;

    .line 146
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 147
    .local v0, "startNamespaces":Ljava/util/LinkedHashMap;
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    move-object v8, v1

    .line 148
    .local v8, "endNamespaces":Ljava/util/LinkedHashMap;
    invoke-virtual/range {p0 .. p0}, Lcom/abq/qba/e/x;->f()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    move-object v4, v3

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/abq/qba/e/a;

    .line 149
    .local v4, "c":Lcom/abq/qba/e/a;
    move-object v4, v5

    instance-of v5, v5, Lcom/abq/qba/e/ab;

    if-eqz v5, :cond_0

    .line 150
    move-object v3, v4

    check-cast v3, Lcom/abq/qba/e/ab;

    .line 151
    .local v3, "namespaceChunk":Lcom/abq/qba/e/ab;
    invoke-virtual {v3}, Lcom/abq/qba/e/ab;->f()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    .end local v3    # "namespaceChunk":Lcom/abq/qba/e/ab;
    goto :goto_0

    :cond_0
    instance-of v5, v4, Lcom/abq/qba/e/aa;

    if-eqz v5, :cond_1

    .line 153
    move-object v3, v4

    check-cast v3, Lcom/abq/qba/e/aa;

    .line 154
    .local v3, "namespaceChunk":Lcom/abq/qba/e/aa;
    invoke-virtual {v3}, Lcom/abq/qba/e/aa;->f()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    .end local v3    # "namespaceChunk":Lcom/abq/qba/e/aa;
    .end local v4    # "c":Lcom/abq/qba/e/a;
    :cond_1
    goto :goto_0

    .line 158
    :cond_2
    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    move-object v9, v1

    .line 159
    .local v9, "xmlNodeStack":Ljava/util/Stack;
    const/4 v1, 0x0

    .local v1, "root":Lcom/seiginonakama/res/utils/ManifestMerger$XmlNode;
    move-object v4, v2

    .line 162
    .local v3, "current":Lcom/seiginonakama/res/utils/ManifestMerger$XmlNode;
    .local v4, "parent":Lcom/seiginonakama/res/utils/ManifestMerger$XmlNode;
    invoke-virtual/range {p0 .. p0}, Lcom/abq/qba/e/x;->f()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v10, v1

    move-object v1, v2

    move-object v11, v3

    move-object v12, v4

    move-object v3, v1

    move-object v4, v3

    .end local v1    # "root":Lcom/seiginonakama/res/utils/ManifestMerger$XmlNode;
    .end local v3    # "current":Lcom/seiginonakama/res/utils/ManifestMerger$XmlNode;
    .end local v4    # "parent":Lcom/seiginonakama/res/utils/ManifestMerger$XmlNode;
    .local v10, "root":Lcom/seiginonakama/res/utils/ManifestMerger$XmlNode;
    .local v11, "current":Lcom/seiginonakama/res/utils/ManifestMerger$XmlNode;
    .local v12, "parent":Lcom/seiginonakama/res/utils/ManifestMerger$XmlNode;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/abq/qba/e/a;

    .line 163
    .local v1, "c":Lcom/abq/qba/e/a;
    move-object v1, v6

    instance-of v6, v6, Lcom/abq/qba/e/ae;

    if-eqz v6, :cond_5

    .line 164
    move-object v3, v1

    check-cast v3, Lcom/abq/qba/e/ae;

    .line 165
    .local v3, "startElementChunk":Lcom/abq/qba/e/ae;
    new-instance v6, Lcom/seiginonakama/res/utils/ManifestMerger$XmlNode;

    invoke-direct {v6, v3, v2}, Lcom/seiginonakama/res/utils/ManifestMerger$XmlNode;-><init>(Lcom/abq/qba/e/ae;Lcom/seiginonakama/res/utils/ManifestMerger$1;)V

    move-object v11, v6

    .line 166
    if-nez v10, :cond_3

    .line 167
    move-object v6, v11

    move-object v10, v6

    .end local v10    # "root":Lcom/seiginonakama/res/utils/ManifestMerger$XmlNode;
    .local v6, "root":Lcom/seiginonakama/res/utils/ManifestMerger$XmlNode;
    goto :goto_2

    .line 169
    .end local v6    # "root":Lcom/seiginonakama/res/utils/ManifestMerger$XmlNode;
    .restart local v10    # "root":Lcom/seiginonakama/res/utils/ManifestMerger$XmlNode;
    :cond_3
    invoke-virtual {v9}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/seiginonakama/res/utils/ManifestMerger$XmlNode;

    .line 170
    move-object v7, v6

    .end local v12    # "parent":Lcom/seiginonakama/res/utils/ManifestMerger$XmlNode;
    .local v7, "parent":Lcom/seiginonakama/res/utils/ManifestMerger$XmlNode;
    # getter for: Lcom/seiginonakama/res/utils/ManifestMerger$XmlNode;->children:Ljava/util/LinkedHashMap;
    invoke-static {v6}, Lcom/seiginonakama/res/utils/ManifestMerger$XmlNode;->access$300(Lcom/seiginonakama/res/utils/ManifestMerger$XmlNode;)Ljava/util/LinkedHashMap;

    move-result-object v6

    # getter for: Lcom/seiginonakama/res/utils/ManifestMerger$XmlNode;->name:Ljava/lang/String;
    invoke-static {v11}, Lcom/seiginonakama/res/utils/ManifestMerger$XmlNode;->access$500(Lcom/seiginonakama/res/utils/ManifestMerger$XmlNode;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 171
    .local v4, "xmlNodes":Ljava/util/List;
    move-object v4, v6

    if-nez v6, :cond_4

    .line 172
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v6

    .line 173
    # getter for: Lcom/seiginonakama/res/utils/ManifestMerger$XmlNode;->children:Ljava/util/LinkedHashMap;
    invoke-static {v7}, Lcom/seiginonakama/res/utils/ManifestMerger$XmlNode;->access$300(Lcom/seiginonakama/res/utils/ManifestMerger$XmlNode;)Ljava/util/LinkedHashMap;

    move-result-object v6

    # getter for: Lcom/seiginonakama/res/utils/ManifestMerger$XmlNode;->name:Ljava/lang/String;
    invoke-static {v11}, Lcom/seiginonakama/res/utils/ManifestMerger$XmlNode;->access$500(Lcom/seiginonakama/res/utils/ManifestMerger$XmlNode;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    :cond_4
    invoke-interface {v4, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v12, v7

    .line 177
    .end local v4    # "xmlNodes":Ljava/util/List;
    .end local v7    # "parent":Lcom/seiginonakama/res/utils/ManifestMerger$XmlNode;
    .restart local v12    # "parent":Lcom/seiginonakama/res/utils/ManifestMerger$XmlNode;
    :goto_2
    invoke-virtual {v9, v11}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    .end local v3    # "startElementChunk":Lcom/abq/qba/e/ae;
    goto :goto_1

    :cond_5
    instance-of v6, v1, Lcom/abq/qba/e/y;

    if-eqz v6, :cond_6

    .line 179
    invoke-virtual {v9}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/seiginonakama/res/utils/ManifestMerger$XmlNode;

    .line 180
    .local v3, "xmlNode":Lcom/seiginonakama/res/utils/ManifestMerger$XmlNode;
    move-object v7, v1

    check-cast v7, Lcom/abq/qba/e/y;

    # invokes: Lcom/seiginonakama/res/utils/ManifestMerger$XmlNode;->setEndElementChunk(Lcom/abq/qba/e/y;)V
    invoke-static {v6, v7}, Lcom/seiginonakama/res/utils/ManifestMerger$XmlNode;->access$600(Lcom/seiginonakama/res/utils/ManifestMerger$XmlNode;Lcom/abq/qba/e/y;)V

    .line 182
    .end local v1    # "c":Lcom/abq/qba/e/a;
    .end local v3    # "xmlNode":Lcom/seiginonakama/res/utils/ManifestMerger$XmlNode;
    :cond_6
    goto :goto_1

    .line 184
    :cond_7
    const/4 v1, 0x0

    .line 185
    .local v1, "stringPoolChunk":Lcom/abq/qba/e/o;
    const/4 v2, 0x0

    .line 186
    .local v2, "resourceMapChunk":Lcom/abq/qba/e/ad;
    invoke-virtual/range {p0 .. p0}, Lcom/abq/qba/e/x;->f()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/abq/qba/e/a;

    .line 187
    .local v4, "c":Lcom/abq/qba/e/a;
    move-object v4, v5

    instance-of v5, v5, Lcom/abq/qba/e/o;

    if-eqz v5, :cond_8

    .line 189
    move-object v1, v4

    check-cast v1, Lcom/abq/qba/e/o;

    goto :goto_4

    .line 190
    :cond_8
    instance-of v5, v4, Lcom/abq/qba/e/ad;

    if-eqz v5, :cond_9

    .line 192
    move-object v2, v4

    check-cast v2, Lcom/abq/qba/e/ad;

    .line 194
    :cond_9
    :goto_4
    if-eqz v1, :cond_b

    if-nez v2, :cond_a

    goto :goto_5

    :cond_a
    move-object v13, v1

    move-object v14, v2

    goto :goto_6

    .line 197
    .end local v4    # "c":Lcom/abq/qba/e/a;
    :cond_b
    :goto_5
    goto :goto_3

    .line 186
    :cond_c
    move-object v13, v1

    move-object v14, v2

    .line 199
    .end local v1    # "stringPoolChunk":Lcom/abq/qba/e/o;
    .end local v2    # "resourceMapChunk":Lcom/abq/qba/e/ad;
    .local v13, "stringPoolChunk":Lcom/abq/qba/e/o;
    .local v14, "resourceMapChunk":Lcom/abq/qba/e/ad;
    :goto_6
    new-instance v15, Lcom/seiginonakama/res/utils/ManifestMerger$XmlTree;

    const/4 v7, 0x0

    move-object v1, v15

    move-object v2, v0

    move-object v3, v8

    move-object v4, v13

    move-object v5, v14

    move-object v6, v10

    invoke-direct/range {v1 .. v7}, Lcom/seiginonakama/res/utils/ManifestMerger$XmlTree;-><init>(Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap;Lcom/abq/qba/e/o;Lcom/abq/qba/e/ad;Lcom/seiginonakama/res/utils/ManifestMerger$XmlNode;Lcom/seiginonakama/res/utils/ManifestMerger$1;)V

    return-object v15
.end method

.method private static strHashCode(Ljava/lang/String;)I
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .line 583
    if-nez p0, :cond_0

    .line 584
    const-string v0, "__null"

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0

    .line 586
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method
