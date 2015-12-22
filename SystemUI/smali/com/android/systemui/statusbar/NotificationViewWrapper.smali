.class public abstract Lcom/android/systemui/statusbar/NotificationViewWrapper;
.super Ljava/lang/Object;
.source "NotificationViewWrapper.java"


# instance fields
.field protected final mView:Landroid/view/View;


# direct methods
.method protected constructor <init>(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationViewWrapper;->mView:Landroid/view/View;

    return-void
.end method

.method public static wrap(Landroid/content/Context;Landroid/view/View;)Lcom/android/systemui/statusbar/NotificationViewWrapper;
    .locals 2

    const v0, 0x10203d9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/systemui/statusbar/NotificationMediaViewWrapper;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/NotificationMediaViewWrapper;-><init>(Landroid/content/Context;Landroid/view/View;)V

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x10203d5

    if-ne v0, v1, :cond_1

    new-instance v0, Lcom/android/systemui/statusbar/NotificationTemplateViewWrapper;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/NotificationTemplateViewWrapper;-><init>(Landroid/content/Context;Landroid/view/View;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/android/systemui/statusbar/NotificationCustomViewWrapper;

    invoke-direct {v0, p1}, Lcom/android/systemui/statusbar/NotificationCustomViewWrapper;-><init>(Landroid/view/View;)V

    goto :goto_0
.end method


# virtual methods
.method public notifyContentUpdated()V
    .locals 0

    return-void
.end method

.method public abstract setDark(ZZJ)V
.end method
