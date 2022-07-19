.class final enum Lcom/seiginonakama/res/utils/ManifestMerger$NodeMergePolicy;
.super Ljava/lang/Enum;
.source "ManifestMerger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/seiginonakama/res/utils/ManifestMerger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "NodeMergePolicy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/seiginonakama/res/utils/ManifestMerger$NodeMergePolicy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/seiginonakama/res/utils/ManifestMerger$NodeMergePolicy;

.field public static final enum CANNOT_DUPLICATE:Lcom/seiginonakama/res/utils/ManifestMerger$NodeMergePolicy;

.field public static final enum KEEP_MERGE_TO:Lcom/seiginonakama/res/utils/ManifestMerger$NodeMergePolicy;

.field public static final enum KEEP_MERGE_TO_WHEN_DUPLICATE:Lcom/seiginonakama/res/utils/ManifestMerger$NodeMergePolicy;

.field public static final enum NODE_KEEP_ALL:Lcom/seiginonakama/res/utils/ManifestMerger$NodeMergePolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 591
    new-instance v0, Lcom/seiginonakama/res/utils/ManifestMerger$NodeMergePolicy;

    const-string v1, "NODE_KEEP_ALL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/seiginonakama/res/utils/ManifestMerger$NodeMergePolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/seiginonakama/res/utils/ManifestMerger$NodeMergePolicy;->NODE_KEEP_ALL:Lcom/seiginonakama/res/utils/ManifestMerger$NodeMergePolicy;

    .line 592
    new-instance v1, Lcom/seiginonakama/res/utils/ManifestMerger$NodeMergePolicy;

    const-string v3, "KEEP_MERGE_TO"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/seiginonakama/res/utils/ManifestMerger$NodeMergePolicy;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/seiginonakama/res/utils/ManifestMerger$NodeMergePolicy;->KEEP_MERGE_TO:Lcom/seiginonakama/res/utils/ManifestMerger$NodeMergePolicy;

    .line 593
    new-instance v3, Lcom/seiginonakama/res/utils/ManifestMerger$NodeMergePolicy;

    const-string v5, "KEEP_MERGE_TO_WHEN_DUPLICATE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/seiginonakama/res/utils/ManifestMerger$NodeMergePolicy;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/seiginonakama/res/utils/ManifestMerger$NodeMergePolicy;->KEEP_MERGE_TO_WHEN_DUPLICATE:Lcom/seiginonakama/res/utils/ManifestMerger$NodeMergePolicy;

    .line 594
    new-instance v5, Lcom/seiginonakama/res/utils/ManifestMerger$NodeMergePolicy;

    const-string v7, "CANNOT_DUPLICATE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/seiginonakama/res/utils/ManifestMerger$NodeMergePolicy;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/seiginonakama/res/utils/ManifestMerger$NodeMergePolicy;->CANNOT_DUPLICATE:Lcom/seiginonakama/res/utils/ManifestMerger$NodeMergePolicy;

    .line 590
    const/4 v7, 0x4

    new-array v7, v7, [Lcom/seiginonakama/res/utils/ManifestMerger$NodeMergePolicy;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/seiginonakama/res/utils/ManifestMerger$NodeMergePolicy;->$VALUES:[Lcom/seiginonakama/res/utils/ManifestMerger$NodeMergePolicy;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 590
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/seiginonakama/res/utils/ManifestMerger$NodeMergePolicy;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 590
    const-class v0, Lcom/seiginonakama/res/utils/ManifestMerger$NodeMergePolicy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/seiginonakama/res/utils/ManifestMerger$NodeMergePolicy;

    return-object v0
.end method

.method public static values()[Lcom/seiginonakama/res/utils/ManifestMerger$NodeMergePolicy;
    .locals 1

    .line 590
    sget-object v0, Lcom/seiginonakama/res/utils/ManifestMerger$NodeMergePolicy;->$VALUES:[Lcom/seiginonakama/res/utils/ManifestMerger$NodeMergePolicy;

    invoke-virtual {v0}, [Lcom/seiginonakama/res/utils/ManifestMerger$NodeMergePolicy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/seiginonakama/res/utils/ManifestMerger$NodeMergePolicy;

    return-object v0
.end method


# virtual methods
.method public final merge(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .param p1, "mergeTo"    # Ljava/util/List;
    .param p2, "mergeFrom"    # Ljava/util/List;
    .param p3, "keyName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/seiginonakama/res/utils/ManifestMerger$XmlNode;",
            ">;",
            "Ljava/util/List<",
            "Lcom/seiginonakama/res/utils/ManifestMerger$XmlNode;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/seiginonakama/res/utils/ManifestMerger$XmlNode;",
            ">;"
        }
    .end annotation

    .line 605
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 606
    .local v0, "mergedResult":Ljava/util/List;
    if-nez p1, :cond_0

    .line 607
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    .line 609
    :cond_0
    if-nez p2, :cond_1

    .line 610
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p2

    .line 614
    :cond_1
    sget-object v1, Lcom/seiginonakama/res/utils/ManifestMerger$1;->$SwitchMap$com$seiginonakama$res$utils$ManifestMerger$NodeMergePolicy:[I

    invoke-virtual {p0}, Lcom/seiginonakama/res/utils/ManifestMerger$NodeMergePolicy;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_d

    const/4 v2, 0x2

    if-eq v1, v2, :cond_c

    const/4 v2, 0x3

    const-string v3, "keyName can\'t be null when KEEP_MERGE_TO_WHEN_DUPLICATE"

    const/4 v4, 0x0

    if-eq v1, v2, :cond_8

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    goto/16 :goto_5

    .line 641
    :cond_2
    if-eqz p3, :cond_7

    .line 644
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 645
    .local v1, "mergedMap":Ljava/util/LinkedHashMap;
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v3, v4

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/seiginonakama/res/utils/ManifestMerger$XmlNode;

    .line 646
    .local v3, "node":Lcom/seiginonakama/res/utils/ManifestMerger$XmlNode;
    move-object v3, v5

    # getter for: Lcom/seiginonakama/res/utils/ManifestMerger$XmlNode;->attrs:Ljava/util/LinkedHashMap;
    invoke-static {v5}, Lcom/seiginonakama/res/utils/ManifestMerger$XmlNode;->access$2500(Lcom/seiginonakama/res/utils/ManifestMerger$XmlNode;)Ljava/util/LinkedHashMap;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeWrapper;

    invoke-static {v5}, Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeKey;->wrap(Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeWrapper;)Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeKey;

    move-result-object v5

    .line 647
    .local v5, "key":Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeKey;
    invoke-virtual {v1, v5, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 648
    .end local v3    # "node":Lcom/seiginonakama/res/utils/ManifestMerger$XmlNode;
    .end local v5    # "key":Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeKey;
    goto :goto_0

    .line 649
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/seiginonakama/res/utils/ManifestMerger$XmlNode;

    .line 650
    .restart local v3    # "node":Lcom/seiginonakama/res/utils/ManifestMerger$XmlNode;
    move-object v3, v5

    # getter for: Lcom/seiginonakama/res/utils/ManifestMerger$XmlNode;->attrs:Ljava/util/LinkedHashMap;
    invoke-static {v5}, Lcom/seiginonakama/res/utils/ManifestMerger$XmlNode;->access$2500(Lcom/seiginonakama/res/utils/ManifestMerger$XmlNode;)Ljava/util/LinkedHashMap;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeWrapper;

    invoke-static {v5}, Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeKey;->wrap(Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeWrapper;)Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeKey;

    move-result-object v5

    .line 651
    .restart local v5    # "key":Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeKey;
    invoke-virtual {v1, v5, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 652
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "xml attr complicate!, attr:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    # getter for: Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeKey;->xmlAttributeWrapper:Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeWrapper;
    invoke-static {v5}, Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeKey;->access$2600(Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeKey;)Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeWrapper;

    move-result-object v7

    if-nez v7, :cond_4

    goto :goto_2

    :cond_4
    # getter for: Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeKey;->xmlAttributeWrapper:Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeWrapper;
    invoke-static {v5}, Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeKey;->access$2600(Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeKey;)Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeWrapper;

    move-result-object v4

    # getter for: Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeWrapper;->xmlAttribute:Lcom/abq/qba/e/u;
    invoke-static {v4}, Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeWrapper;->access$1700(Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeWrapper;)Lcom/abq/qba/e/u;

    move-result-object v4

    :goto_2
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " node:"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 654
    .end local v3    # "node":Lcom/seiginonakama/res/utils/ManifestMerger$XmlNode;
    .end local v5    # "key":Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeKey;
    :cond_5
    goto :goto_1

    .line 655
    :cond_6
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_5

    .line 642
    .end local v1    # "mergedMap":Ljava/util/LinkedHashMap;
    :cond_7
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 626
    :cond_8
    if-eqz p3, :cond_b

    .line 629
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 630
    .restart local v1    # "mergedMap":Ljava/util/LinkedHashMap;
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/seiginonakama/res/utils/ManifestMerger$XmlNode;

    .line 631
    .local v4, "node":Lcom/seiginonakama/res/utils/ManifestMerger$XmlNode;
    move-object v4, v3

    # getter for: Lcom/seiginonakama/res/utils/ManifestMerger$XmlNode;->attrs:Ljava/util/LinkedHashMap;
    invoke-static {v3}, Lcom/seiginonakama/res/utils/ManifestMerger$XmlNode;->access$2500(Lcom/seiginonakama/res/utils/ManifestMerger$XmlNode;)Ljava/util/LinkedHashMap;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeWrapper;

    invoke-static {v3}, Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeKey;->wrap(Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeWrapper;)Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeKey;

    move-result-object v3

    .line 632
    .local v3, "key":Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeKey;
    invoke-virtual {v1, v3, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 633
    .end local v3    # "key":Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeKey;
    .end local v4    # "node":Lcom/seiginonakama/res/utils/ManifestMerger$XmlNode;
    goto :goto_3

    .line 634
    :cond_9
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/seiginonakama/res/utils/ManifestMerger$XmlNode;

    .line 635
    .restart local v4    # "node":Lcom/seiginonakama/res/utils/ManifestMerger$XmlNode;
    move-object v4, v3

    # getter for: Lcom/seiginonakama/res/utils/ManifestMerger$XmlNode;->attrs:Ljava/util/LinkedHashMap;
    invoke-static {v3}, Lcom/seiginonakama/res/utils/ManifestMerger$XmlNode;->access$2500(Lcom/seiginonakama/res/utils/ManifestMerger$XmlNode;)Ljava/util/LinkedHashMap;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeWrapper;

    invoke-static {v3}, Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeKey;->wrap(Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeWrapper;)Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeKey;

    move-result-object v3

    .line 636
    .restart local v3    # "key":Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeKey;
    invoke-virtual {v1, v3, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 637
    .end local v3    # "key":Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeKey;
    .end local v4    # "node":Lcom/seiginonakama/res/utils/ManifestMerger$XmlNode;
    goto :goto_4

    .line 638
    :cond_a
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 639
    goto :goto_5

    .line 627
    .end local v1    # "mergedMap":Ljava/util/LinkedHashMap;
    :cond_b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 620
    :cond_c
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 621
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 622
    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_5

    .line 616
    :cond_d
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 617
    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 618
    nop

    .line 658
    :cond_e
    :goto_5
    return-object v0
.end method
