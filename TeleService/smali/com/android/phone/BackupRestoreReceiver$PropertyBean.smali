.class public Lcom/android/phone/BackupRestoreReceiver$PropertyBean;
.super Ljava/lang/Object;
.source "BackupRestoreReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/BackupRestoreReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PropertyBean"
.end annotation


# instance fields
.field mType:I

.field mValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/phone/BackupRestoreReceiver$PropertyBean;->mType:I

    iput-object p2, p0, Lcom/android/phone/BackupRestoreReceiver$PropertyBean;->mValue:Ljava/lang/String;

    return-void
.end method
