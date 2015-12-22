.class public Lcom/android/systemui/recents/misc/Console;
.super Ljava/lang/Object;
.source "Console.java"


# static fields
.field public static final AnsiBlack:Ljava/lang/String; = "\u001b[30m"

.field public static final AnsiBlue:Ljava/lang/String; = "\u001b[34m"

.field public static final AnsiCyan:Ljava/lang/String; = "\u001b[36m"

.field public static final AnsiGreen:Ljava/lang/String; = "\u001b[32m"

.field public static final AnsiPurple:Ljava/lang/String; = "\u001b[35m"

.field public static final AnsiRed:Ljava/lang/String; = "\u001b[31m"

.field public static final AnsiReset:Ljava/lang/String; = "\u001b[0m"

.field public static final AnsiWhite:Ljava/lang/String; = "\u001b[37m"

.field public static final AnsiYellow:Ljava/lang/String; = "\u001b[33m"

.field public static Enabled:Z

.field public static final mTimeLogs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/systemui/recents/misc/Console;->mTimeLogs:Ljava/util/Map;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/systemui/recents/misc/Console;->Enabled:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static log(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x1

    const-string v1, ""

    const-string v2, "\u001b[0m"

    invoke-static {v0, p0, v1, v2}, Lcom/android/systemui/recents/misc/Console;->log(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static log(ZLjava/lang/String;)V
    .locals 2

    if-eqz p0, :cond_0

    const-string v0, ""

    const-string v1, "\u001b[0m"

    invoke-static {p0, p1, v0, v1}, Lcom/android/systemui/recents/misc/Console;->log(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static log(ZLjava/lang/String;Ljava/lang/Object;)V
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "\u001b[0m"

    invoke-static {p0, p1, p2, v0}, Lcom/android/systemui/recents/misc/Console;->log(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static log(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3

    if-eqz p0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u001b[0m"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static logDivider(Z)V
    .locals 4

    if-eqz p0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "==== ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] ============================================================"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static logError(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const-string v0, "Recents"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static logRawError(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1

    const-string v0, "Recents"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static logStackTrace()V
    .locals 2

    const-string v0, ""

    const/16 v1, 0x63

    invoke-static {v0, v1}, Lcom/android/systemui/recents/misc/Console;->logStackTrace(Ljava/lang/String;I)V

    return-void
.end method

.method public static logStackTrace(I)V
    .locals 1

    const-string v0, ""

    invoke-static {v0, p0}, Lcom/android/systemui/recents/misc/Console;->logStackTrace(Ljava/lang/String;I)V

    return-void
.end method

.method public static logStackTrace(Ljava/lang/String;I)V
    .locals 11

    const/4 v10, -0x1

    const/4 v6, 0x0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const-string v8, ""

    const/4 v4, 0x0

    :goto_0
    array-length v9, v0

    if-ge v4, v9, :cond_0

    aget-object v2, v0, v4

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v1

    const-string v9, "dalvik.system.VMStack"

    invoke-virtual {v1, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    if-ne v9, v10, :cond_2

    const-string v9, "java.lang.Thread"

    invoke-virtual {v1, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    if-ne v9, v10, :cond_2

    const-string v9, "recents.Console"

    invoke-virtual {v1, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    if-ne v9, v10, :cond_2

    :cond_0
    add-int v9, v6, p1

    array-length v10, v0

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v7

    move v3, v6

    const-string v5, ""

    add-int/lit8 v4, v7, -0x1

    :goto_1
    if-lt v4, v3, :cond_3

    aget-object v2, v0, v4

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " -> "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    if-le v4, v3, :cond_1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_3
    const/4 v9, 0x1

    const-string v10, "\u001b[31m"

    invoke-static {v9, p0, v8, v10}, Lcom/android/systemui/recents/misc/Console;->log(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static logStartTracingTime(ZLjava/lang/String;)V
    .locals 5

    if-eqz p0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object v2, Lcom/android/systemui/recents/misc/Console;->mTimeLogs:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[Recents|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "started @ "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v2, v3}, Lcom/android/systemui/recents/misc/Console;->log(ZLjava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static logTraceTime(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 6

    if-eqz p0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sget-object v2, Lcom/android/systemui/recents/misc/Console;->mTimeLogs:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long v0, v4, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[Recents|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "+"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v2, v3}, Lcom/android/systemui/recents/misc/Console;->log(ZLjava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static motionEventActionToString(I)Ljava/lang/String;
    .locals 2

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_1
    const-string v0, "Down"

    goto :goto_0

    :pswitch_2
    const-string v0, "Up"

    goto :goto_0

    :pswitch_3
    const-string v0, "Move"

    goto :goto_0

    :pswitch_4
    const-string v0, "Cancel"

    goto :goto_0

    :pswitch_5
    const-string v0, "Pointer Down"

    goto :goto_0

    :pswitch_6
    const-string v0, "Pointer Up"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public static trimMemoryLevelToString(I)Ljava/lang/String;
    .locals 2

    sparse-switch p0, :sswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :sswitch_0
    const-string v0, "UI Hidden"

    goto :goto_0

    :sswitch_1
    const-string v0, "Running Moderate"

    goto :goto_0

    :sswitch_2
    const-string v0, "Background"

    goto :goto_0

    :sswitch_3
    const-string v0, "Running Low"

    goto :goto_0

    :sswitch_4
    const-string v0, "Moderate"

    goto :goto_0

    :sswitch_5
    const-string v0, "Critical"

    goto :goto_0

    :sswitch_6
    const-string v0, "Complete"

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_1
        0xa -> :sswitch_3
        0xf -> :sswitch_5
        0x14 -> :sswitch_0
        0x28 -> :sswitch_2
        0x3c -> :sswitch_4
        0x50 -> :sswitch_6
    .end sparse-switch
.end method
