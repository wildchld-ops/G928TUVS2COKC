.class Lcom/android/server/am/ActivityManagerService$43;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$43;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3

    instance-of v2, p1, Landroid/content/pm/ResolveInfo;

    if-eqz v2, :cond_0

    check-cast p1, Landroid/content/pm/ResolveInfo;

    iget v0, p1, Landroid/content/pm/ResolveInfo;->priority:I

    :goto_0
    instance-of v2, p2, Landroid/content/pm/ResolveInfo;

    if-eqz v2, :cond_1

    check-cast p2, Landroid/content/pm/ResolveInfo;

    iget v1, p2, Landroid/content/pm/ResolveInfo;->priority:I

    :goto_1
    if-le v0, v1, :cond_2

    const/4 v2, -0x1

    :goto_2
    return v2

    :cond_0
    check-cast p1, Landroid/content/IntentFilter;

    invoke-virtual {p1}, Landroid/content/IntentFilter;->getPriority()I

    move-result v0

    goto :goto_0

    :cond_1
    check-cast p2, Landroid/content/IntentFilter;

    invoke-virtual {p2}, Landroid/content/IntentFilter;->getPriority()I

    move-result v1

    goto :goto_1

    :cond_2
    if-ge v0, v1, :cond_3

    const/4 v2, 0x1

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    goto :goto_2
.end method
