.class Lcom/android/server/notification/DndScheduleConditionProvider$3;
.super Lcom/android/server/notification/ZenModeHelper$Callback;
.source "DndScheduleConditionProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/DndScheduleConditionProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/DndScheduleConditionProvider;


# direct methods
.method constructor <init>(Lcom/android/server/notification/DndScheduleConditionProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/notification/DndScheduleConditionProvider$3;->this$0:Lcom/android/server/notification/DndScheduleConditionProvider;

    invoke-direct {p0}, Lcom/android/server/notification/ZenModeHelper$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method onZenModeChanged()V
    .locals 0

    return-void
.end method
