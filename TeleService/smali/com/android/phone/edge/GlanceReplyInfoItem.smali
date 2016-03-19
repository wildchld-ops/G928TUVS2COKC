.class public Lcom/android/phone/edge/GlanceReplyInfoItem;
.super Ljava/lang/Object;
.source "GlanceReplyInfoItem.java"


# instance fields
.field color:I

.field contactId:J

.field message:Ljava/lang/String;

.field name:Ljava/lang/String;

.field photoURI:Landroid/net/Uri;


# direct methods
.method public constructor <init>(JLjava/lang/String;Landroid/net/Uri;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/phone/edge/GlanceReplyInfoItem;->contactId:J

    iput-object p3, p0, Lcom/android/phone/edge/GlanceReplyInfoItem;->name:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/phone/edge/GlanceReplyInfoItem;->photoURI:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/phone/edge/GlanceReplyInfoItem;->message:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/edge/GlanceReplyInfoItem;->message:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/android/phone/edge/GlanceReply;->DEFAULT_REPLY_MESSAGE:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/phone/edge/GlanceReplyInfoItem;->message:Ljava/lang/String;

    goto :goto_0
.end method

.method public getPrefKey()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "glance_reply_info_item_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/phone/edge/GlanceReplyInfoItem;->contactId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setColor(I)V
    .locals 0

    iput p1, p0, Lcom/android/phone/edge/GlanceReplyInfoItem;->color:I

    return-void
.end method

.method public setDefaultMessageforPref(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0, p2}, Lcom/android/phone/edge/GlanceReplyInfoItem;->setMessage(Ljava/lang/String;)V

    const-string v0, "glance_reply_default_message"

    invoke-static {p1, v0, p2}, Lcom/android/phone/edge/GlanceReplyManager;->setReplyMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/edge/GlanceReplyInfoItem;->message:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "GlanceReplyInfoItem"

    return-object v0
.end method
