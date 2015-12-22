.class Lcom/android/systemui/qs/QSEditPanel$8;
.super Landroid/database/ContentObserver;
.source "QSEditPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/QSEditPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/QSEditPanel;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/QSEditPanel;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/QSEditPanel$8;->this$0:Lcom/android/systemui/qs/QSEditPanel;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel$8;->this$0:Lcom/android/systemui/qs/QSEditPanel;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSEditPanel;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel$8;->this$0:Lcom/android/systemui/qs/QSEditPanel;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSEditPanel;->resetPanel()V

    :cond_0
    return-void
.end method
