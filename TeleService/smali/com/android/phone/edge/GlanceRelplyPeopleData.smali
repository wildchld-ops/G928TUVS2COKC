.class public Lcom/android/phone/edge/GlanceRelplyPeopleData;
.super Ljava/lang/Object;
.source "GlanceRelplyPeopleData.java"


# instance fields
.field itemDefault:Lcom/android/phone/edge/GlanceReplyInfoItem;

.field itemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/phone/edge/GlanceReplyInfoItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/phone/edge/GlanceReplyInfoItem;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/phone/edge/GlanceRelplyPeopleData;->itemList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getDefaultItem()Lcom/android/phone/edge/GlanceReplyInfoItem;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/edge/GlanceRelplyPeopleData;->itemDefault:Lcom/android/phone/edge/GlanceReplyInfoItem;

    return-object v0
.end method

.method public setDefaultItem(Ljava/lang/String;)V
    .locals 5

    new-instance v0, Lcom/android/phone/edge/GlanceReplyInfoItem;

    const-wide/16 v2, -0x1

    const-string v1, "Default message"

    const/4 v4, 0x0

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/android/phone/edge/GlanceReplyInfoItem;-><init>(JLjava/lang/String;Landroid/net/Uri;)V

    iput-object v0, p0, Lcom/android/phone/edge/GlanceRelplyPeopleData;->itemDefault:Lcom/android/phone/edge/GlanceReplyInfoItem;

    iget-object v0, p0, Lcom/android/phone/edge/GlanceRelplyPeopleData;->itemDefault:Lcom/android/phone/edge/GlanceReplyInfoItem;

    invoke-virtual {v0, p1}, Lcom/android/phone/edge/GlanceReplyInfoItem;->setMessage(Ljava/lang/String;)V

    return-void
.end method
