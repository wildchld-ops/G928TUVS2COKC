.class public Lcom/android/incallui/HeadUpNotificationView;
.super Landroid/widget/RelativeLayout;
.source "HeadUpNotificationView.java"


# instance fields
.field mHeadUpNotificationService:Lcom/android/incallui/HeadUpNotificationService;


# direct methods
.method public constructor <init>(Lcom/android/incallui/HeadUpNotificationService;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/incallui/HeadUpNotificationView;->mHeadUpNotificationService:Lcom/android/incallui/HeadUpNotificationService;

    return-void
.end method
