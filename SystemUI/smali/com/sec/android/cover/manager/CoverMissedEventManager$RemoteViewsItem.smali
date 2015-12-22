.class public Lcom/sec/android/cover/manager/CoverMissedEventManager$RemoteViewsItem;
.super Lcom/sec/android/cover/manager/CoverMissedEventManager$MissedEventItem;
.source "CoverMissedEventManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/cover/manager/CoverMissedEventManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RemoteViewsItem"
.end annotation


# instance fields
.field public mContentIntent:Landroid/app/PendingIntent;

.field public mEventCount:I

.field public mRemoteType:Ljava/lang/String;

.field public final mRemoteViews:Landroid/widget/RemoteViews;

.field public final mSecureRemoteViews:Landroid/widget/RemoteViews;

.field final synthetic this$0:Lcom/sec/android/cover/manager/CoverMissedEventManager;


# direct methods
.method public constructor <init>(Lcom/sec/android/cover/manager/CoverMissedEventManager;IJLandroid/widget/RemoteViews;Landroid/app/PendingIntent;ILjava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/cover/manager/CoverMissedEventManager$RemoteViewsItem;->this$0:Lcom/sec/android/cover/manager/CoverMissedEventManager;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/cover/manager/CoverMissedEventManager$MissedEventItem;-><init>(Lcom/sec/android/cover/manager/CoverMissedEventManager;IJ)V

    iput-object p5, p0, Lcom/sec/android/cover/manager/CoverMissedEventManager$RemoteViewsItem;->mRemoteViews:Landroid/widget/RemoteViews;

    iput-object p5, p0, Lcom/sec/android/cover/manager/CoverMissedEventManager$RemoteViewsItem;->mSecureRemoteViews:Landroid/widget/RemoteViews;

    iput-object p6, p0, Lcom/sec/android/cover/manager/CoverMissedEventManager$RemoteViewsItem;->mContentIntent:Landroid/app/PendingIntent;

    iput p7, p0, Lcom/sec/android/cover/manager/CoverMissedEventManager$RemoteViewsItem;->mEventCount:I

    iput-object p8, p0, Lcom/sec/android/cover/manager/CoverMissedEventManager$RemoteViewsItem;->mRemoteType:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/cover/manager/CoverMissedEventManager;IJLandroid/widget/RemoteViews;Landroid/widget/RemoteViews;Landroid/app/PendingIntent;ILjava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/cover/manager/CoverMissedEventManager$RemoteViewsItem;->this$0:Lcom/sec/android/cover/manager/CoverMissedEventManager;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/cover/manager/CoverMissedEventManager$MissedEventItem;-><init>(Lcom/sec/android/cover/manager/CoverMissedEventManager;IJ)V

    iput-object p5, p0, Lcom/sec/android/cover/manager/CoverMissedEventManager$RemoteViewsItem;->mRemoteViews:Landroid/widget/RemoteViews;

    iput-object p6, p0, Lcom/sec/android/cover/manager/CoverMissedEventManager$RemoteViewsItem;->mSecureRemoteViews:Landroid/widget/RemoteViews;

    iput-object p7, p0, Lcom/sec/android/cover/manager/CoverMissedEventManager$RemoteViewsItem;->mContentIntent:Landroid/app/PendingIntent;

    iput p8, p0, Lcom/sec/android/cover/manager/CoverMissedEventManager$RemoteViewsItem;->mEventCount:I

    iput-object p9, p0, Lcom/sec/android/cover/manager/CoverMissedEventManager$RemoteViewsItem;->mRemoteType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getContentIntent()Landroid/app/PendingIntent;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/manager/CoverMissedEventManager$RemoteViewsItem;->mContentIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public getEventCount()I
    .locals 1

    iget v0, p0, Lcom/sec/android/cover/manager/CoverMissedEventManager$RemoteViewsItem;->mEventCount:I

    return v0
.end method

.method public getRemoteType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/manager/CoverMissedEventManager$RemoteViewsItem;->mRemoteType:Ljava/lang/String;

    return-object v0
.end method

.method public getRemoteViews()Landroid/widget/RemoteViews;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/manager/CoverMissedEventManager$RemoteViewsItem;->mRemoteViews:Landroid/widget/RemoteViews;

    return-object v0
.end method

.method public getSecureRemoteViews()Landroid/widget/RemoteViews;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/manager/CoverMissedEventManager$RemoteViewsItem;->mSecureRemoteViews:Landroid/widget/RemoteViews;

    return-object v0
.end method
