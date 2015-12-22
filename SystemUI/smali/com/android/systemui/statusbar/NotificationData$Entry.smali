.class public final Lcom/android/systemui/statusbar/NotificationData$Entry;
.super Ljava/lang/Object;
.source "NotificationData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/NotificationData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Entry"
.end annotation


# static fields
.field public static final CONTAINER_NO_SANITIZING:I = 0x2

.field private static final KNOX_TAG:Ljava/lang/String; = "KnoxNotification"

.field public static final NO_SANITIZING:I = 0x3

.field public static final OWNER:I = 0x1

.field public static final SANITIZED_GROUP_SUMMARY:I = 0x10

.field public static final SANITIZING_AND_COLLAPSE:I = 0x8

.field public static final SANITIZING_ONLY:I = 0x4


# instance fields
.field public autoRedacted:Z

.field public expanded:Landroid/view/View;

.field public expandedBig:Landroid/view/View;

.field public expandedKnox:Landroid/view/View;

.field public expandedPublic:Landroid/view/View;

.field public icon:Lcom/android/systemui/statusbar/StatusBarIconView;

.field private interruption:Z

.field public isDismissed:Z

.field public isSanitizedPendingIntent:Z

.field public key:Ljava/lang/String;

.field public legacy:Z

.field public notification:Landroid/service/notification/StatusBarNotification;

.field public row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

.field public sanitizing:I

.field public targetSdk:I


# direct methods
.method public constructor <init>(Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/StatusBarIconView;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->sanitizing:I

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->isDismissed:Z

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    iput-object p2, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->isSanitizedPendingIntent:Z

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->interruption:Z

    return v0
.end method


# virtual methods
.method public getBigContentView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->expandedBig:Landroid/view/View;

    return-object v0
.end method

.method public getKnoxContentView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->expandedKnox:Landroid/view/View;

    return-object v0
.end method

.method public getPublicContentView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->expandedPublic:Landroid/view/View;

    return-object v0
.end method

.method public hasInterrupted()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->interruption:Z

    return v0
.end method

.method public reset()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->expanded:Landroid/view/View;

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->expandedPublic:Landroid/view/View;

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->expandedKnox:Landroid/view/View;

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->expandedBig:Landroid/view/View;

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->autoRedacted:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->legacy:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->reset()V

    :cond_0
    return-void
.end method

.method public setBigContentView(Landroid/view/View;)V
    .locals 2

    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->expandedBig:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setExpandable(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setInterruption()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->interruption:Z

    return-void
.end method
