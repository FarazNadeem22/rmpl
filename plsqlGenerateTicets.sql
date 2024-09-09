DELIMITER //

CREATE PROCEDURE generate_ticket_report()
BEGIN
    SELECT 
        t.TicketID, 
        t.StartDate, 
        t.TicketGenerationTime, 
        t.TicketResolutionTime, 
        g.RMGNo AS GeneratorName, 
        i.IssueName, 
        c.ClientName, 
        tt.TicketTypeName, 
        ir.IssueRecognitionName, 
        p.PriorityName, 
        pe.PersonName AS AssignedToName, 
        d.DepartmentName, 
        s.StatusName, 
        t.CompletedDate, 
        t.TimeTakenDays, 
        t.PendingDays, 
        t.Remarks
    FROM 
        Tickets t
        JOIN Generators g ON t.GeneratorID = g.GeneratorID
        JOIN Issues i ON t.IssueID = i.IssueID
        JOIN Clients c ON t.ClientID = c.ClientID
        JOIN TicketTypes tt ON t.TicketTypeID = tt.TicketTypeID
        JOIN IssueRecognitions ir ON t.IssueRecognitionID = ir.IssueRecognitionID
        JOIN Priorities p ON t.PriorityID = p.PriorityID
        JOIN People pe ON t.AssignedTo = pe.PersonID
        JOIN Departments d ON t.DepartmentID = d.DepartmentID
        JOIN Statuses s ON t.StatusID = s.StatusID;
END //

DELIMITER ;
