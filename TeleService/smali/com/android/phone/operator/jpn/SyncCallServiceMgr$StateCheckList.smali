.class public Lcom/android/phone/operator/jpn/SyncCallServiceMgr$StateCheckList;
.super Ljava/lang/Object;
.source "SyncCallServiceMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/operator/jpn/SyncCallServiceMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StateCheckList"
.end annotation


# instance fields
.field public address:Ljava/lang/String;

.field public callState:I

.field public index:J

.field public isGroupCall:Z

.field final synthetic this$0:Lcom/android/phone/operator/jpn/SyncCallServiceMgr;


# direct methods
.method public constructor <init>(Lcom/android/phone/operator/jpn/SyncCallServiceMgr;Ljava/lang/String;IJZ)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$StateCheckList;->this$0:Lcom/android/phone/operator/jpn/SyncCallServiceMgr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$StateCheckList;->address:Ljava/lang/String;

    iput p3, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$StateCheckList;->callState:I

    iput-wide p4, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$StateCheckList;->index:J

    iput-boolean p6, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$StateCheckList;->isGroupCall:Z

    return-void
.end method
