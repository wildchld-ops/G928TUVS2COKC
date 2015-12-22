.class Lcom/android/phone/mobilenetworks/kor/NetworkMode$ListItem;
.super Ljava/lang/Object;
.source "NetworkMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/mobilenetworks/kor/NetworkMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListItem"
.end annotation


# instance fields
.field private mName:Ljava/lang/String;

.field private mValue:I

.field final synthetic this$0:Lcom/android/phone/mobilenetworks/kor/NetworkMode;


# direct methods
.method public constructor <init>(Lcom/android/phone/mobilenetworks/kor/NetworkMode;ILjava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkMode$ListItem;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkMode$ListItem;->mValue:I

    iput p2, p0, Lcom/android/phone/mobilenetworks/kor/NetworkMode$ListItem;->mValue:I

    iput-object p3, p0, Lcom/android/phone/mobilenetworks/kor/NetworkMode$ListItem;->mName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getValue()I
    .locals 1

    iget v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkMode$ListItem;->mValue:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkMode$ListItem;->mName:Ljava/lang/String;

    return-object v0
.end method
