.class final Lcom/android/phone/PhoneInterfaceManager$IccChannelArgument;
.super Ljava/lang/Object;
.source "PhoneInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneInterfaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "IccChannelArgument"
.end annotation


# instance fields
.field public AID:Ljava/lang/String;

.field public channel:I

.field public slotId:I


# direct methods
.method public constructor <init>(ILjava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/phone/PhoneInterfaceManager$IccChannelArgument;->channel:I

    iput-object p2, p0, Lcom/android/phone/PhoneInterfaceManager$IccChannelArgument;->AID:Ljava/lang/String;

    invoke-static {p3}, Landroid/telephony/SubscriptionManager;->isValidSlotId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iput p3, p0, Lcom/android/phone/PhoneInterfaceManager$IccChannelArgument;->slotId:I

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/PhoneInterfaceManager$IccChannelArgument;->slotId:I

    goto :goto_0
.end method
