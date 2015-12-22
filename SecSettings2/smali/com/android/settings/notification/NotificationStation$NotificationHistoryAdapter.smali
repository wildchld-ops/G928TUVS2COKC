.class Lcom/android/settings/notification/NotificationStation$NotificationHistoryAdapter;
.super Landroid/widget/ArrayAdapter;
.source "NotificationStation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/NotificationStation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NotificationHistoryAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/android/settings/notification/NotificationStation;


# direct methods
.method public constructor <init>(Lcom/android/settings/notification/NotificationStation;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/android/settings/notification/NotificationStation$NotificationHistoryAdapter;->this$0:Lcom/android/settings/notification/NotificationStation;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/settings/notification/NotificationStation$NotificationHistoryAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method private createRow(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/android/settings/notification/NotificationStation$NotificationHistoryAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f040132

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    invoke-virtual {p0, p1}, Lcom/android/settings/notification/NotificationStation$NotificationHistoryAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;

    const-string v2, "getView(%s/%s)"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, v0, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;->pkg:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, v0, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;->title:Ljava/lang/CharSequence;

    aput-object v5, v3, v4

    # invokes: Lcom/android/settings/notification/NotificationStation;->logd(Ljava/lang/String;[Ljava/lang/Object;)V
    invoke-static {v2, v3}, Lcom/android/settings/notification/NotificationStation;->access$100(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p2, :cond_2

    move-object v1, p2

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v2, v0, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    const v2, 0x1020006

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iget-object v3, v0, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iget-object v2, v0, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;->pkgicon:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    const v2, 0x7f1002a2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iget-object v3, v0, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;->pkgicon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    const v2, 0x7f1002a3

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/DateTimeView;

    iget-wide v4, v0, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;->timestamp:J

    invoke-virtual {v2, v4, v5}, Landroid/widget/DateTimeView;->setTime(J)V

    const v2, 0x1020016

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, v0, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f1002a5

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, v0, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;->pkgname:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f1002a4

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-boolean v2, v0, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;->active:Z

    if-eqz v2, :cond_3

    const/high16 v2, 0x3f800000    # 1.0f

    :goto_1
    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    new-instance v2, Lcom/android/settings/notification/NotificationStation$NotificationHistoryAdapter$1;

    invoke-direct {v2, p0, v0}, Lcom/android/settings/notification/NotificationStation$NotificationHistoryAdapter$1;-><init>(Lcom/android/settings/notification/NotificationStation$NotificationHistoryAdapter;Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v1

    :cond_2
    invoke-direct {p0, p3}, Lcom/android/settings/notification/NotificationStation$NotificationHistoryAdapter;->createRow(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    :cond_3
    const/high16 v2, 0x3f000000    # 0.5f

    goto :goto_1
.end method
