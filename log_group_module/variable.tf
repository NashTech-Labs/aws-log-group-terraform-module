variable "log_group_name"{
    default = "myloggroup"
    type = string
    description = "this is use to identify the log group"
}

variable "retention_in_days"{
    default = 2
    type = number
    description = "this value is used to keep your logs for specified number of days"
}

variable "log_group_class"{
    default = "STANDARD" #other is INFREQUENT_ACCESS
    type = string
    description = "Specified the log class of the log group"
}

variable "log_stream_name"{
    default = "mylogsstream"
    type = string
}

variable "bucket_name"{
    default = "logbucket"
    type = string
}

variable "policy_name"{
    default = "log_policy"
    type = string
}