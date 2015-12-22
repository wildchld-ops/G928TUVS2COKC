.class Lcom/android/systemui/qs/QSPanel$2;
.super Lcom/android/systemui/settings/CurrentUserTracker;
.source "QSPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/QSPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/QSPanel;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/QSPanel;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/QSPanel$2;->this$0:Lcom/android/systemui/qs/QSPanel;

    invoke-direct {p0, p2}, Lcom/android/systemui/settings/CurrentUserTracker;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onUserSwitched(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel$2;->this$0:Lcom/android/systemui/qs/QSPanel;

    # getter for: Lcom/android/systemui/qs/QSPanel;->mNumberObserver:Lcom/android/systemui/qs/QSPanel$QuickSettingButtonNumberObserver;
    invoke-static {v0}, Lcom/android/systemui/qs/QSPanel;->access$500(Lcom/android/systemui/qs/QSPanel;)Lcom/android/systemui/qs/QSPanel$QuickSettingButtonNumberObserver;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSPanel$QuickSettingButtonNumberObserver;->onChange(Z)V

    return-void
.end method
