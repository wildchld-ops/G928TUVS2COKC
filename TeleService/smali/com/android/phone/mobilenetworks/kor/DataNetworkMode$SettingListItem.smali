.class Lcom/android/phone/mobilenetworks/kor/DataNetworkMode$SettingListItem;
.super Ljava/lang/Object;
.source "DataNetworkMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/mobilenetworks/kor/DataNetworkMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SettingListItem"
.end annotation


# instance fields
.field private mName:Ljava/lang/String;

.field private mValue:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/phone/mobilenetworks/kor/DataNetworkMode$SettingListItem;->mValue:I

    iput p1, p0, Lcom/android/phone/mobilenetworks/kor/DataNetworkMode$SettingListItem;->mValue:I

    iput-object p2, p0, Lcom/android/phone/mobilenetworks/kor/DataNetworkMode$SettingListItem;->mName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getValue()I
    .locals 1

    iget v0, p0, Lcom/android/phone/mobilenetworks/kor/DataNetworkMode$SettingListItem;->mValue:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/DataNetworkMode$SettingListItem;->mName:Ljava/lang/String;

    return-object v0
.end method
